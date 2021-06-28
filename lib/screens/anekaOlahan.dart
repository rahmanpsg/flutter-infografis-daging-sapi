import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:infografis_daging_sapi/bloc/olahan_bloc.dart';
import 'package:infografis_daging_sapi/models/olahan_models.dart';
import 'package:infografis_daging_sapi/models/resep_models.dart';
import 'package:infografis_daging_sapi/styles/constant.dart';
import 'package:infografis_daging_sapi/widgets/emptyData.dart';
import 'package:infografis_daging_sapi/widgets/errorData.dart';

import 'resep.dart';

class AnekaOlahanScreen extends StatelessWidget {
  const AnekaOlahanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    final String language = context.locale.toString();
    List<OlahanModel> olahanList =
        context.select<OlahanBloc, List<OlahanModel>>(
            (OlahanBloc olahanBloc) => olahanBloc.state.olahanList);

    String selectedMetode = context.select<OlahanBloc, String>(
        (OlahanBloc olahanBloc) => olahanBloc.state.selectedMetode);

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "menu.olahan",
            style: TextStyle(fontWeight: FontWeight.bold),
          ).tr(),
        ),
        backgroundColor: bgColor,
        body: Column(
          children: <Widget>[
            new Container(
              child: new Padding(
                padding: const EdgeInsets.all(10),
                child: new Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: new ListTile(
                    leading: new Icon(Icons.search),
                    title: new TextField(
                      controller: controller,
                      decoration: new InputDecoration(
                        hintText: 'cari'.tr(),
                        border: InputBorder.none,
                      ),
                      onChanged: (value) {
                        context.read<OlahanBloc>().add(FilterBySearch(
                              olahanList: olahanList,
                              query: value,
                              language: language,
                            ));
                      },
                    ),
                    trailing: new IconButton(
                      icon: new Icon(Icons.cancel),
                      onPressed: () {
                        controller.clear();
                        context
                            .read<OlahanBloc>()
                            .add(ClearFilter(olahanList: olahanList));
                      },
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _buttonMetode(context, "bbq", selectedMetode, olahanList),
                _buttonMetode(context, "rebus", selectedMetode, olahanList),
                _buttonMetode(context, "goreng", selectedMetode, olahanList),
                _buttonMetode(context, "panggang", selectedMetode, olahanList),
                _buttonMetode(context, "oven", selectedMetode, olahanList),
              ],
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: BlocBuilder<OlahanBloc, OlahanState>(
                  builder: (context, state) {
                    return state.isLoading
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SpinKitFadingFour(
                                color: primaryColor,
                              ),
                              Text(
                                "Loading Data...",
                                style:
                                    primaryStyle.copyWith(color: Colors.black),
                              ),
                            ],
                          )
                        : !state.error.status
                            ? errorData()
                            : state.olahanListFilter.length <= 0
                                ? emptyData()
                                : ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: state.olahanListFilter.length,
                                    padding: EdgeInsets.all(10),
                                    itemBuilder: (context, index) {
                                      final olahan =
                                          state.olahanListFilter[index];
                                      return Container(
                                        margin: EdgeInsets.symmetric(
                                          vertical: 4,
                                        ),
                                        height: 60,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(25),
                                              bottomRight: Radius.circular(25)),
                                        ),
                                        child: Material(
                                          color: bgColor,
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          elevation: 3,
                                          shadowColor: Colors.white,
                                          child: InkWell(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            onTap: () {
                                              final route = MaterialPageRoute(
                                                builder: (context) =>
                                                    ResepScreen(
                                                  resepData:
                                                      ResepModel.fromJson(
                                                          olahan.toJson()),
                                                ),
                                              );
                                              Navigator.push(context, route);
                                            },
                                            child: ListTile(
                                                leading: CircleAvatar(
                                                  radius: 25,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  backgroundImage: NetworkImage(
                                                      olahan.imageUrl),
                                                ),
                                                title: Text(
                                                  olahan.nama[language],
                                                ),
                                                trailing: new Icon(
                                                  Icons.arrow_right_alt,
                                                  color: Colors.black,
                                                )),
                                          ),
                                        ),
                                      );
                                    });
                  },
                ),
              ),
            ),
          ],
        ));
  }
}

Widget _buttonMetode(
  BuildContext context,
  String metode,
  String selectedMetode,
  List<OlahanModel> olahanList,
) {
  return IconButton(
    icon: Image.asset(
        "assets/images/${metode}_icon${selectedMetode == metode ? '_active' : ''}.png"),
    iconSize: 50,
    onPressed: () {
      if (selectedMetode == metode)
        context.read<OlahanBloc>().add(ClearFilter(olahanList: olahanList));
      else
        context.read<OlahanBloc>().add(
              FilterByMetode(
                olahanList: olahanList,
                metode: metode,
              ),
            );
    },
  );
}
