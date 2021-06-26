import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infografis_daging_sapi/bloc/resep_bloc.dart';
import 'package:infografis_daging_sapi/screens/resep.dart';
import 'package:infografis_daging_sapi/styles/constant.dart';
import 'package:shimmer/shimmer.dart';

class ListResepInfografis extends StatelessWidget {
  const ListResepInfografis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String language = context.locale.toString();

    return BlocBuilder<ResepBloc, ResepState>(
      builder: (context, state) {
        return state.isLoading
            ? _shimmerLoading()
            : state.resepList.length <= 0
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.no_food,
                        size: 50,
                        color: secondaryColor,
                      ),
                      Text(
                        "empty_data",
                        style: secondaryStyle.copyWith(color: Colors.black54),
                      ).tr(),
                    ],
                  )
                : ListView.builder(
                    itemCount: state.isLoading ? 5 : state.resepList.length,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    itemBuilder: (context, index) {
                      final resepList = state.resepList[index];

                      return Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 3,
                        ),
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Material(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          elevation: 3,
                          shadowColor: Colors.white,
                          child: InkWell(
                            onTap: () {
                              final route = MaterialPageRoute(
                                builder: (context) => ResepScreen(
                                  resepData: resepList,
                                ),
                              );
                              Navigator.push(context, route);
                            },
                            borderRadius: BorderRadius.circular(20),
                            child: Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Row(children: <Widget>[
                                Image.network(
                                  resepList.imageUrl,
                                  height: 50,
                                ),
                                SizedBox(width: 25),
                                Expanded(
                                  child: Text(
                                    resepList.nama[language],
                                    style: primaryStyle.copyWith(
                                      fontSize: 18,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                  ),
                                  height: double.infinity,
                                  width: 50,
                                  child: Icon(
                                    Icons.arrow_right_alt_rounded,
                                    color: Colors.white,
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ),
                      );
                    },
                  );
      },
    );
  }
}

Widget _shimmerLoading() {
  return Shimmer.fromColors(
    baseColor: Colors.white,
    highlightColor: bgColor,
    child: ListView.builder(
      itemCount: 7,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 3,
          ),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Material(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            elevation: 3,
            shadowColor: Colors.white,
          ),
        );
      },
    ),
  );
}
