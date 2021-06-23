import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infografis_daging_sapi/bloc/infografis_bloc.dart';
import 'package:infografis_daging_sapi/models/infografis_models.dart';
import 'package:infografis_daging_sapi/styles/constant.dart';
import 'package:infografis_daging_sapi/models/sapiCoordinate.dart';
import 'package:infografis_daging_sapi/src/imageMap.dart';

class InfografisScreen extends StatelessWidget {
  const InfografisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int selectedList = context.select<InfografisBloc, int>(
        (infografisBloc) => infografisBloc.state.selectedList);

    List<InfografisModel> infografisList =
        context.select<InfografisBloc, List<InfografisModel>>(
            (infografisBloc) => infografisBloc.state.infografisList);

    final List<Color> colors = List.generate(
      points.length,
      (index) => index == selectedList
          ? Color.fromRGBO(255, 255, 255, 0.8)
          : Colors.transparent,
    );

    final List<Path> polygonRegions = points.map((e) {
      Path p = Path();
      p.addPolygon(e, true);
      return p;
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Infografis",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: bgColor,
      body: Column(
        children: [
          SizedBox(height: 20),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  title: Text(
                    "Silahkan klik pada bagian sapi untuk melihat detail",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  tileColor: primaryColor,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ImageMap(
                      imagePath: 'assets/images/cow-menu.png',
                      imageSize: Size(1000, 996),
                      onTap: (i) {
                        print(i);
                        context.read<InfografisBloc>().add(SelectedChange(i));
                        _modalBottomSheet(
                            context,
                            infografisList,
                            () => context
                                .read<InfografisBloc>()
                                .add(SelectedChange(-1)));
                      },
                      regions: polygonRegions,
                      regionColors: colors),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

void _modalBottomSheet(
    context, List<InfografisModel> infografisList, Function callback) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    backgroundColor: bgColor,
    builder: (BuildContext bc) {
      InfografisState infografisState = bc.watch<InfografisBloc>().state;
      final items = List<String>.generate(100, (i) => "Item $i");
      return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Column(
          children: <Widget>[
            TabBar(
              indicatorColor: primaryColor,
              labelColor: primaryColor,
              unselectedLabelColor: Colors.black87,
              labelStyle: primaryStyle.copyWith(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
              tabs: <Widget>[
                Tab(
                  text: "Daging",
                ),
                Tab(
                  text: "Deskripsi",
                ),
                Tab(
                  text: "Resep",
                )
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: EdgeInsets.symmetric(
                          vertical: 3,
                          horizontal: 15,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Material(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          child: InkWell(
                            onTap: () => print(index),
                            borderRadius: BorderRadius.circular(20),
                            splashColor: bgColor,
                            child: ListTile(
                              leading: CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage("assets/images/olahan-menu.png"),
                              ),
                              title: Text('The Enchanted Nightingale'),
                              subtitle: Text(
                                'Music by Julie Gable. Lyrics by Sidney Stein  \nMusic by Julie Gable. Lyrics by Sidney SteinMusic by Julie Gable. Lyrics by Sidney SteinMusic by Julie Gable. Lyrics by Sidney Stein.',
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  ListView(
                    children: <Widget>[
                      Text(infografisList.elementAt(0).namaIdn)
                    ],
                  ),
                  ListView(
                    children: <Widget>[
                      Text((infografisState is InfografisLoaded)
                          ? infografisList.toString()
                          : ""),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      );
    },
  ).whenComplete(() => callback());
}
