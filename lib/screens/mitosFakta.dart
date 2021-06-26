import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:infografis_daging_sapi/styles/constant.dart';

class MitosFaktaScreen extends StatelessWidget {
  const MitosFaktaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "menu.m&f",
          style: TextStyle(fontWeight: FontWeight.bold),
        ).tr(),
      ),
      backgroundColor: bgColor,
      body: ListView.builder(
          itemCount: 5,
          padding: EdgeInsets.symmetric(vertical: 10),
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.network(
                      "https://cdn-ci-j.orami.co.id/v7/https://cdn-cas.orami.co.id/parenting/images/Ini_4_Mitos_Tentang_Daging_Yang_Ternyata_Salah.width-800_NvMd2Te.jpg?w=468&h=387.27",
                      fit: BoxFit.fill,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Semua Daging Merah Tidak Baik",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Mitos tentang daging yang pertama ini ternyata salah. \n"Daging merah olahan seperti salami dan hot dog memang harus dihindari, karena aktivitas karsinogen potensial mereka yang akan merugikan kesehatan," kata L. J. Amaral, ahli diet klinis dan penelitian di Rumah Sakit Cedars-Sinai di Los Angeles. \nMelihat dari kandungan baik yang dimiliki, American Institute for Cancer Research bahkan memberikan saran agar mengkonsumsi tiga porsi daging merah per minggu. \n"Sepotong daging merah adalah sumber yang kaya bioavailable (heme) zat besi, vitamin B12, seng, dan selenium, dan nutrisi-nutrisi lainnya," kata Edwina Clark, seorang ahli diet terdaftar dan kepala nutrisi yang terdaftar di California. \nYang harus Moms lakukan adalah ekstra hati-hati saat memasak daging. Pastikan tidak terbakar dan potong bagian yang terbakar. \nSecara keseluruhan, ada sangat sedikit bukti yang menghubungkan konsumsi daging dengan kanker.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(height: 1.5),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
