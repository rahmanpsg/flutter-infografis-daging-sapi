import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infografis_daging_sapi/bloc/infografis_bloc.dart';
import 'package:infografis_daging_sapi/styles/constant.dart';

import 'emptyData.dart';

class ListDagingInfografis extends StatelessWidget {
  const ListDagingInfografis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String language = context.locale.toString();

    return BlocBuilder<InfografisBloc, InfografisState>(
      builder: (context, state) {
        return state.dagingListFilter.length <= 0
            ? emptyData()
            : ListView.builder(
                itemCount: state.dagingListFilter.length,
                padding: EdgeInsets.symmetric(vertical: 10),
                itemBuilder: (context, index) {
                  final dagingList = state.dagingListFilter[index];
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
                            backgroundImage: NetworkImage(dagingList.imageUrl),
                          ),
                          title: Text(dagingList.nama[language]
                              .toString()
                              .capitalizeFirstofEach),
                          subtitle: Text(dagingList.deskripsi[language]),
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

extension CapExtension on String {
  String get inCaps =>
      this.length > 0 ? '${this[0].toUpperCase()}${this.substring(1)}' : '';
  String get allInCaps => this.toUpperCase();
  String get capitalizeFirstofEach => this
      .replaceAll(RegExp(' +'), ' ')
      .replaceAll('.', '')
      .split(" ")
      .map((str) => str.inCaps)
      .join(" ");
}
