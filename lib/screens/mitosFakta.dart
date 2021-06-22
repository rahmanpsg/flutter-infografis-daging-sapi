import 'package:flutter/material.dart';

class MitosFaktaScreen extends StatelessWidget {
  const MitosFaktaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mitos & Fakta",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
