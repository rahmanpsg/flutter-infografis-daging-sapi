import 'package:flutter/material.dart';

class AnekaOlahanScreen extends StatelessWidget {
  const AnekaOlahanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Aneka Olahan",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
