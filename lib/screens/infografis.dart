import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infografis_daging_sapi/bloc/infografis_bloc.dart';
import 'package:infografis_daging_sapi/constant.dart';
import 'package:infografis_daging_sapi/models/sapiCoordinate.dart';
import 'package:infografis_daging_sapi/src/imageMap.dart';

class InfografisScreen extends StatelessWidget {
  const InfografisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int selectedDaging = context.select<InfografisBloc, int>((infografisBloc) =>
        (infografisBloc.state is SelectedDaging
            ? (infografisBloc.state as SelectedDaging).value
            : -1));

    final List<Color> colors = List.generate(
      points.length,
      (index) => index == selectedDaging
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
                        print("$i");
                        context.read<InfografisBloc>().add(Selected(i));
                        _settingModalBottomSheet(
                            context,
                            () => context
                                .read<InfografisBloc>()
                                .add(Selected(-1)));
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

void _settingModalBottomSheet(context, Function callback) {
  showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      backgroundColor: bgColor,
      builder: (BuildContext bc) {
        InfografisState infografisState = bc.watch<InfografisBloc>().state;

        return DefaultTabController(
          length: 3,
          initialIndex: 0,
          child: Column(
            children: <Widget>[
              TabBar(
                indicatorColor: primaryColor,
                labelColor: primaryColor,
                tabs: <Widget>[
                  Tab(
                    text: "Daging",
                  ),
                  Tab(
                    text: "Deksripsi",
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
                      children: <Widget>[
                        Text((infografisState is SelectedDaging)
                            ? infografisState.value < 0
                                ? ""
                                : dagingEng[infografisState.value]
                            : ""),
                      ],
                    ),
                    ListView(
                      children: <Widget>[
                        Text((infografisState is SelectedDaging)
                            ? infografisState.value < 0
                                ? ""
                                : dagingEng[infografisState.value]
                            : ""),
                      ],
                    ),
                    ListView(
                      children: <Widget>[
                        Text((infografisState is SelectedDaging)
                            ? infografisState.value < 0
                                ? ""
                                : dagingEng[infografisState.value]
                            : ""),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      }).whenComplete(() => callback());
}
