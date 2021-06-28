import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:infografis_daging_sapi/styles/constant.dart';

Widget emptyData() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
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
  );
}
