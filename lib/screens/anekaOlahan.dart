import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infografis_daging_sapi/bloc/olahan_bloc.dart';
import 'package:infografis_daging_sapi/models/olahan_models.dart';
import 'package:infografis_daging_sapi/styles/constant.dart';

class AnekaOlahanScreen extends StatelessWidget {
  const AnekaOlahanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    final String language = context.locale.toString();
    OlahanState olahanState = context.watch<OlahanBloc>().state;

    // List<OlahanModel> olahanListFilter =
    //     context.select<OlahanBloc, List<OlahanModel>>(
    //         (olahanBloc) => olahanBloc.state.olahanListFilter);

    // print(olahanListFilter);

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
                        hintText: 'Cari',
                        border: InputBorder.none,
                      ),
                      onChanged: (value) {
                        OlahanBloc()
                          ..add(FilterBySearch(
                            olahanList: olahanState.olahanListFilter,
                            query: value,
                            language: language,
                          ));

                        // context.read<OlahanBloc>().add(FilterBySearch(
                        //       olahanList: olahanListFilter,
                        //       query: value,
                        //       language: language,
                        //     ));
                      },
                    ),
                    trailing: new IconButton(
                      icon: new Icon(Icons.cancel),
                      onPressed: () {
                        controller.clear();
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
                IconButton(
                  icon: Image.asset('assets/images/bbq_icon.png'),
                  iconSize: 50,
                  onPressed: () {
                    context.read<OlahanBloc>().add(SelectedOlahanChange(1));
                  },
                ),
                IconButton(
                  icon: Image.asset('assets/images/bbq_icon.png'),
                  iconSize: 50,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset('assets/images/bbq_icon.png'),
                  iconSize: 50,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Image.asset('assets/images/bbq_icon.png'),
                  iconSize: 50,
                  onPressed: () {},
                ),
              ],
            ),
            Expanded(
                child: ListView.builder(
                    shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    itemCount: olahanState.olahanListFilter.length,
                    // state.isLoading ? 5 : olahanListFilter.length,
                    itemBuilder: (context, index) {
                      return olahanState.isLoading
                          ? Text("Loading")
                          : Column(
                              children: [
                                Card(
                                  child: (ListTile(
                                    title:
                                        // Text(olahanListFilter[index].nama[language]),
                                        Text(olahanState.olahanListFilter[index]
                                            .nama[language]),
                                  )),
                                ),
                                IconButton(
                                  icon:
                                      Image.asset('assets/images/bbq_icon.png'),
                                  iconSize: 50,
                                  onPressed: () {
                                    context
                                        .read<OlahanBloc>()
                                        .add(SelectedOlahanChange(1));
                                  },
                                )
                              ],
                            );
                    })
                // }),
                ),
          ],
        ));
  }
}
