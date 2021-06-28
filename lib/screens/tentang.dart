import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:infografis_daging_sapi/styles/constant.dart';

class TentangScreen extends StatelessWidget {
  const TentangScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "menu.tentang",
          style: TextStyle(fontWeight: FontWeight.bold),
        ).tr(),
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
              title: const Text('tentang.judul').tr(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'tentang.info',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.6),
                ),
                textAlign: TextAlign.justify,
              ).tr(),
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _dosenInfo("pembimbing", "1", "Muhammad Zainal, ST. MT"),
                    SizedBox(height: 10),
                    _dosenInfo("pembimbing", "2", "Masnur, ST., M.Kom"),
                    SizedBox(height: 10),
                    _dosenInfo("penguji", "1", "Marlina, S.kom, M.Kom"),
                    SizedBox(height: 10),
                    _dosenInfo("penguji", "2", "Hj. A. Irmayani P, ST., MT"),
                  ],
                ),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  child: Container(
                    child: Image.asset(
                      "assets/images/google_play.png",
                      height: 25,
                    ),
                  ),
                  onTap: () {
                    Fluttertoast.showToast(
                      msg: "Coming Soon",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.SNACKBAR,
                      backgroundColor: bgColor,
                      textColor: Colors.black87,
                      fontSize: 16.0,
                    );
                  },
                ),
                SizedBox(width: 10),
                InkWell(
                  child: Container(
                    child: Image.asset(
                      "assets/images/gmail.png",
                      height: 30,
                    ),
                  ),
                  onTap: () {
                    Fluttertoast.showToast(
                      msg: "syaifulsaipul99@gmail.com",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: bgColor,
                      textColor: Colors.black87,
                      fontSize: 16.0,
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}

Widget _dosenInfo(String dosen, String angka, String nama) {
  final dosenLength = "tentang.$dosen".tr().length;
  return Row(
    children: [
      Text("tentang.$dosen").tr(args: [angka]),
      SizedBox(
          width: dosen == "pembimbing"
              ? 20
              : dosenLength == 11
                  ? 25
                  : 52),
      Text(":"),
      SizedBox(width: 20),
      Expanded(child: Text(nama)),
    ],
  );
}
