import 'package:flutter/material.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        height: 290,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xFFfa6666),
                Color(0xFFfa0a0a),
                Color(0xFFfa6666),
              ]),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              Expanded(
                  child: Stack(
                children: <Widget>[
                  Transform.scale(
                    scale: 0.9,
                    child: Image(
                      image: AssetImage("assets/images/cow.png"),
                      width: 190,
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 195,
                    child: Text(
                      "Aplikasi Infografis \nPada Daging \nSapi",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(3.0, 3.0),
                            blurRadius: 3.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 80,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
