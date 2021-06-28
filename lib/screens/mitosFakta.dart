import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:infografis_daging_sapi/bloc/mitosfakta_bloc.dart';
import 'package:infografis_daging_sapi/styles/constant.dart';
import 'package:infografis_daging_sapi/widgets/emptyData.dart';
import 'package:infografis_daging_sapi/widgets/errorData.dart';

class MitosFaktaScreen extends StatelessWidget {
  const MitosFaktaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String language = context.locale.toString();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "menu.m&f",
          style: TextStyle(fontWeight: FontWeight.bold),
        ).tr(),
      ),
      backgroundColor: bgColor,
      body: BlocBuilder<MitosFaktaBloc, MitosFaktaState>(
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
                      style: primaryStyle.copyWith(color: Colors.black),
                    ),
                  ],
                )
              : !state.error.status
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        errorData(),
                      ],
                    )
                  : state.mitosFaktaList.length <= 0
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            emptyData(),
                          ],
                        )
                      : ListView.builder(
                          itemCount: state.mitosFaktaList.length,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          itemBuilder: (context, index) {
                            final mitosFakta = state.mitosFaktaList[index];
                            return IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  _cardMitos(
                                    mitosFakta.mitos[language],
                                    mitosFakta.mitos["imageUrl"],
                                  ),
                                  _cardFakta(
                                    mitosFakta.fakta[language],
                                    mitosFakta.fakta["imageUrl"],
                                  )
                                ],
                              ),
                            );
                          });
        },
      ),
    );
  }
}

Widget _cardMitos(String judul, String imageUrl) {
  return Expanded(
    child: Card(
      color: Color(0xff3b3838),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Image.network(
                imageUrl,
                width: 10,
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "mitos",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ).tr(),
                  Text(
                    judul,
                    textAlign: TextAlign.end,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _cardFakta(String judul, String imageUrl) {
  return Expanded(
    child: Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "fakta",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Color(0xFF2b2b2b),
                    ),
                  ).tr(),
                  Text(
                    judul,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Image.network(
                imageUrl,
                width: 10,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
