import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infografis_daging_sapi/bloc/infografis_bloc.dart';
import 'package:infografis_daging_sapi/styles/constant.dart';
import 'package:infografis_daging_sapi/models/sapiCoordinate.dart';
import 'package:infografis_daging_sapi/src/imageMap.dart';
import 'package:infografis_daging_sapi/widgets/loading.dart';
import 'package:shimmer/shimmer.dart';

class InfografisScreen extends StatelessWidget {
  const InfografisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int selectedList = context.select<InfografisBloc, int>(
        (infografisBloc) => infografisBloc.state.selectedList);

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
      body: BlocListener<InfografisBloc, InfografisState>(
        listener: (context, state) {
          if (state.isLoading) {
            Navigator.of(context).push(Loading());
          } else if (!state.isLoading &&
              state.isDataLoaded &&
              !ModalRoute.of(context)!.isCurrent) {
            Navigator.pop(context);
          }
        },
        child: Column(
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
                        imagePath: 'assets/images/cow-en.png',
                        imageSize: Size(1000, 996),
                        onTap: (i) {
                          context.read<InfografisBloc>().add(SelectedChange(i));
                          _modalBottomSheetInfografis(
                              context,
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
      ),
    );
  }
}

void _modalBottomSheetInfografis(context, Function callback) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    backgroundColor: bgColor,
    builder: (BuildContext bc) {
      InfografisState infografisState = bc.watch<InfografisBloc>().state;

      final infografisData = infografisState.infografisList
          .elementAt(infografisState.selectedList < 0
              ? 0
              : infografisState.selectedList == 14
                  ? 10
                  : infografisState.selectedList);

      final String language = "id";

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
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              tabs: <Widget>[
                Tab(
                  text: "Deskripsi",
                ),
                Tab(
                  text: "Potongan Daging",
                ),
                Tab(
                  text: "Resep",
                )
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  ListView(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    children: <Widget>[
                      Center(
                        child: Text(
                          infografisData.nama[language],
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Divider(),
                      Text(infografisData.deskripsi[language]["ket"]),
                      Divider(),
                      SizedBox(height: 10),
                      _contentDeskripsi(
                        "Warna",
                        infografisData.deskripsi[language]["warna"],
                      ),
                      SizedBox(height: 10),
                      _contentDeskripsi(
                        "Aroma",
                        infografisData.deskripsi[language]["aroma"],
                      ),
                      SizedBox(height: 10),
                      _contentDeskripsi(
                        "Penampakan",
                        infografisData.deskripsi[language]["penampakan"],
                      ),
                      SizedBox(height: 10),
                      _contentDeskripsi(
                        "Kekenyalan",
                        infografisData.deskripsi[language]["kekenyalan"],
                      ),
                    ],
                  ),
                  // _shimmerLoading(),
                  ListView.builder(
                    itemCount: 5,
                    padding: EdgeInsets.symmetric(vertical: 10),
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
                                radius: 25,
                                backgroundColor: Colors.transparent,
                                backgroundImage: AssetImage(
                                    "assets/images/daging/cow_blade_roast.png"),
                              ),
                              title: Text('Arm Roast'),
                              subtitle: Text(
                                'Counted among the toughest Primal Beef cuts, Arm Roast has been regarded as one of the leanest portions of Beef by the United States Department of Agriculture (USDA). In fact, this low-priced Beef cut is considered a healthy choice due to its minimal cholestrol content.',
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                  ListView(
                    children: <Widget>[
                      Text((infografisState is InfografisLoaded)
                          ? infografisState.infografisList.toString()
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

Widget _shimmerLoading() {
  return Shimmer.fromColors(
    baseColor: Colors.white,
    highlightColor: bgColor,
    child: ListView.builder(
      itemCount: 5,
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
                  backgroundImage: AssetImage("assets/images/olahan-menu.png"),
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
  );
}

Widget _contentDeskripsi(String title, String content) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Expanded(child: Divider()),
          SizedBox(width: 5),
          Text(title),
          SizedBox(width: 5),
          Expanded(child: Divider()),
        ],
      ),
      Text(content),
      Divider()
    ],
  );
}
