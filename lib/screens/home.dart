import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:infografis_daging_sapi/styles/constant.dart';
import 'package:infografis_daging_sapi/widgets/headerHome.dart';
import 'package:infografis_daging_sapi/widgets/menuHome.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Flexible(
            child: Stack(children: <Widget>[
              Positioned.fill(
                top: 210,
                child: Image(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                children: <Widget>[
                  HeaderHome(),
                  SizedBox(height: 20),
                  MenuWidget(
                    text: "menu.infografis".tr(),
                    url: "/infografis",
                    img: "assets/images/cow-menu.png",
                  ),
                  SizedBox(height: 20),
                  MenuWidget(
                    text: tr("menu", gender: "m&f"),
                    url: "/mitosFakta",
                    img: "assets/images/mitos-menu.png",
                  ),
                  SizedBox(height: 20),
                  MenuWidget(
                    text: tr("menu", gender: "olahan"),
                    url: "/anekaOlahan",
                    img: "assets/images/olahan-menu.png",
                  ),
                  SizedBox(height: 20),
                  MenuWidget(
                    text: tr("menu", gender: "tentang"),
                    url: "/tentang",
                    img: "assets/images/tentang-menu.png",
                  ),
                  Expanded(child: SizedBox(height: 20)),
                  FlutterToggleTab(
                    width: 50,
                    borderRadius: 20,
                    initialIndex: context.locale.toString() == "id" ? 0 : 1,
                    selectedBackgroundColors: [primaryColor],
                    unSelectedBackgroundColors: [bgColor],
                    selectedTextStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    unSelectedTextStyle: TextStyle(
                        color: primaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    labels: ["Indonesia", "English"],
                    selectedLabelIndex: (index) {
                      context
                          .setLocale(index == 1 ? Locale('en') : Locale('id'));
                    },
                  ),
                  SizedBox(height: 20),
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}
