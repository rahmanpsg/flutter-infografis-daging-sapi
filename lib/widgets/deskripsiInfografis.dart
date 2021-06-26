import 'package:flutter/material.dart';
import 'package:infografis_daging_sapi/models/infografis_models.dart';

class DeskripsiInfografis extends StatelessWidget {
  const DeskripsiInfografis({
    Key? key,
    required this.infografisData,
    required this.language,
  }) : super(key: key);

  final InfografisModel infografisData;
  final String language;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      children: <Widget>[
        Center(
          child: Text(
            infografisData.nama[language],
            style: TextStyle(fontSize: 20),
          ),
        ),
        Divider(),
        Text(infografisData.deskripsi[language]["ket"]),
        Divider(),
        SizedBox(height: 10),
        _contentDeskripsi(
          "Warna",
          infografisData.deskripsi[language]["warna"],
        ),
        SizedBox(height: 10),
        _contentDeskripsi(
          "Aroma",
          infografisData.deskripsi[language]["aroma"],
        ),
        SizedBox(height: 10),
        _contentDeskripsi(
          "Penampakan",
          infografisData.deskripsi[language]["penampakan"],
        ),
        SizedBox(height: 10),
        _contentDeskripsi(
          "Kekenyalan",
          infografisData.deskripsi[language]["kekenyalan"],
        ),
      ],
    );
  }
}

Widget _contentDeskripsi(String title, String content) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Expanded(child: Divider()),
          SizedBox(width: 5),
          Text(title),
          SizedBox(width: 5),
          Expanded(child: Divider()),
        ],
      ),
      Text(content),
      Divider()
    ],
  );
}
