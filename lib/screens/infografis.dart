import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infografis_daging_sapi/bloc/infografis_bloc.dart';
import 'package:infografis_daging_sapi/bloc/resep_bloc.dart';
import 'package:infografis_daging_sapi/models/daging_models.dart';
import 'package:infografis_daging_sapi/models/infografis_models.dart';
import 'package:infografis_daging_sapi/styles/constant.dart';
import 'package:infografis_daging_sapi/models/sapiCoordinate.dart';
import 'package:infografis_daging_sapi/src/imageMap.dart';
import 'package:infografis_daging_sapi/widgets/alertError.dart';
import 'package:infografis_daging_sapi/widgets/deskripsiInfografis.dart';
import 'package:infografis_daging_sapi/widgets/listDagingInfografis.dart';
import 'package:infografis_daging_sapi/widgets/listResepInfografis.dart';
import 'package:infografis_daging_sapi/widgets/loading.dart';

class InfografisScreen extends StatelessWidget {
  const InfografisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<InfografisModel> infografisList =
        context.select<InfografisBloc, List<InfografisModel>>(
            (infografisBloc) => infografisBloc.state.infografisList);
    List<DagingModel> dagingList =
        context.select<InfografisBloc, List<DagingModel>>(
            (infografisBloc) => infografisBloc.state.dagingList);

    bool isDataLoaded = context.select<InfografisBloc, bool>(
        (infografisBloc) => infografisBloc.state.isDataLoaded);

    int selectedList = context.select<InfografisBloc, int>(
        (infografisBloc) => infografisBloc.state.selectedList);

    if (!isDataLoaded && infografisList.length <= 0)
      context.read<InfografisBloc>().add(InfografisLoaded());

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
          "menu.infografis",
          style: TextStyle(fontWeight: FontWeight.bold),
        ).tr(),
      ),
      backgroundColor: bgColor,
      body: BlocListener<InfografisBloc, InfografisState>(
        listener: (context, state) {
          print(state.error);
          if (state.isLoading && !state.isDataLoaded) {
            Navigator.of(context).push(Loading());
          } else if (!state.error.status && !state.isDataLoaded) {
            Navigator.pop(context);
            alertError(context);
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
                      "info_klik",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ).tr(),
                    tileColor: primaryColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: ImageMap(
                        imagePath:
                            "assets/images/cow-${context.locale.toString()}.png",
                        imageSize: Size(1000, 996),
                        onTap: (i) {
                          print(infografisList);
                          if (infografisList.length > 0) {
                            context
                                .read<InfografisBloc>()
                                .add(SelectedChange(i));
                            context
                                .read<InfografisBloc>()
                                .add(FilterDagingList(dagingList, i + 1));
                            _modalBottomSheetInfografis(
                                context,
                                () => context
                                    .read<InfografisBloc>()
                                    .add(SelectedChange(-1)));
                          } else {
                            alertError(context);
                          }
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

      final String language = bc.locale.toString();

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
                  text: "infografisModal.deskripsi".tr(),
                ),
                Tab(
                  text: "infografisModal.daging".tr(),
                ),
                Tab(
                  text: "infografisModal.resep".tr(),
                )
              ],
            ),
            Expanded(
              child: BlocProvider(
                create: (context) => ResepBloc()
                  ..add(ResepLoaded(infografisState.selectedList + 1)),
                child: TabBarView(
                  children: [
                    DeskripsiInfografis(
                      infografisData: infografisData,
                      language: language,
                    ),
                    // _shimmerLoading(),
                    ListDagingInfografis(),
                    ListResepInfografis(),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    },
  ).whenComplete(() => callback());
}
