import 'package:flutter/material.dart';
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
                    text: "Infografis",
                    url: "/infografis",
                    img: "assets/images/cow-menu.png",
                  ),
                  SizedBox(height: 20),
                  MenuWidget(
                    text: "Mitos & Fakta",
                    url: "/mitosFakta",
                    img: "assets/images/mitos-menu.png",
                  ),
                  SizedBox(height: 20),
                  MenuWidget(
                    text: "Aneka Olahan",
                    url: "/anekaOlahan",
                    img: "assets/images/olahan-menu.png",
                  ),
                  SizedBox(height: 20),
                  MenuWidget(
                    text: "Tentang",
                    url: "/tentang",
                    img: "assets/images/tentang-menu.png",
                  ),
                ],
              )
            ]),
          ),
        ],
      ),
    );
  }
}
