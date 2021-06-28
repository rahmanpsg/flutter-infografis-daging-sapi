import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:infografis_daging_sapi/styles/constant.dart';

Widget errorData() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Icon(
        Icons.signal_wifi_connected_no_internet_4,
        size: 50,
        color: secondaryColor,
      ),
      Text(
        "error_data",
        style: secondaryStyle.copyWith(color: Colors.black54),
      ).tr(),
    ],
  );
}
