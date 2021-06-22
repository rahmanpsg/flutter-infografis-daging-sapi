import 'package:flutter/material.dart';
import '../constant.dart';

class MenuWidget extends StatelessWidget {
  MenuWidget({required this.text, required this.url, required this.img});

  final String text;
  final String url;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Material(
        color: bgColor,
        borderRadius: BorderRadius.circular(25),
        elevation: 3,
        shadowColor: Colors.white,
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, this.url);
          },
          borderRadius: BorderRadius.circular(25),
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(children: <Widget>[
              Image(
                image: AssetImage(this.img),
                width: 60,
                height: 50,
              ),
              SizedBox(width: 25),
              Expanded(
                child: Text(
                  this.text,
                  style: primaryStyle.copyWith(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      bottomRight: Radius.circular(25)),
                ),
                height: double.infinity,
                width: 50,
                child: Icon(
                  Icons.arrow_right_alt_rounded,
                  color: primaryColor,
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
