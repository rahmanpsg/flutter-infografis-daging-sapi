import 'package:flutter/material.dart';
import 'package:infografis_daging_sapi/constant.dart';

class TentangScreen extends StatelessWidget {
  const TentangScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tentang",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: bgColor,
      body: Card(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Center(
              child: Image(
                image: AssetImage("assets/images/logo.png"),
                width: 150,
              ),
            ),
            ListTile(
              title: const Text(
                  'Aplikasi Infografis Pada Daging Sapi Berbasis Android'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Infografis adalah media informasi yang disajikan dalam bentuk teks, serta dipadukan dengan beberapa elemen visual seperti gambar, ilustrasi, grafik, dan tipografi.',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  'Syaiful \n217280165',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Pembimbing 1 : Muhammad Zainal, ST. MT'),
                  SizedBox(height: 10),
                  Text('Pembimbing 2 : Masnur, ST., M.Kom'),
                  SizedBox(height: 10),
                  Text('Penguji 1 : Marlina, S.kom, M.Kom'),
                  SizedBox(height: 10),
                  Text('Penguji 2 : Hj. A. Irmayani P, ST., MT'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
