import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:infografis_daging_sapi/models/resep_models.dart';
import 'package:infografis_daging_sapi/services/tts_service.dart';
import 'package:infografis_daging_sapi/styles/constant.dart';

class ResepScreen extends StatelessWidget {
  const ResepScreen({
    Key? key,
    required this.resepData,
  }) : super(key: key);

  final ResepModel resepData;

  @override
  Widget build(BuildContext context) {
    TtsService ttsService =
        TtsService(resepData: resepData, language: context.locale.toString());
    final String language = context.locale.toString();

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            iconTheme: IconThemeData(color: dangerColor),
            expandedHeight: 300,
            backgroundColor: bgColor,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                resepData.nama[language],
                style: TextStyle(
                  color: Colors.white,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ],
                ),
              ),
              background: Image.network(
                resepData.imageUrl,
                // fit: BoxFit.cover,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(20),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Stack(
                        clipBehavior: Clip.none,
                        alignment: AlignmentDirectional.bottomStart,
                        children: <Widget>[
                          SizedBox(height: 40),
                          Positioned(
                            child: Text(
                              "resep.bahan",
                              style: secondaryStyle,
                            ).tr(),
                          )
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () =>
                          _modalBottomSheetTts(context, resepData, ttsService),
                      child: Icon(
                        Icons.record_voice_over,
                        color: Colors.white,
                      ),
                      style: ElevatedButton.styleFrom(
                        onPrimary: bgColor,
                        primary: primaryColor,
                        minimumSize: Size(50, 36),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    )
                  ],
                ),
                Divider(),
                for (var i = 0; i < resepData.bahan[language].length; i++)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: new Text(resepData.bahan[language][i]),
                  ),
                Divider(),
                Text(
                  "resep.cara",
                  style: secondaryStyle,
                ).tr(),
                Divider(),
                for (var i = 0; i < resepData.cara[language].length; i++)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("${i + 1}. "),
                        Expanded(
                            child: new Text(
                          resepData.cara[language][i],
                          textAlign: TextAlign.justify,
                        )),
                      ],
                    ),
                  ),
                Divider(),
                Text(
                  "resep.porsi",
                  style: secondaryStyle,
                ).tr(args: [resepData.porsi.toString()]),
                Divider(),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "resep.gizi",
                        style:
                            primaryStyle.copyWith(fontWeight: FontWeight.bold),
                      ).tr(),
                      Text(
                        "resep.energi",
                        style: primaryStyle,
                      ).tr(args: [resepData.gizi['energi']]),
                      Text(
                        "resep.kolestrol",
                        style: primaryStyle,
                      ).tr(args: [resepData.gizi['kolestrol']]),
                    ],
                  ),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

void _modalBottomSheetTts(
  context,
  ResepModel resepData,
  TtsService ttsService,
) {
  showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      backgroundColor: bgColor,
      builder: (BuildContext bc) {
        return Container(
          height: 100,
          color: bgColor,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.play_arrow),
                        Text("mulai").tr(),
                      ],
                    ),
                  ),
                  onPressed: () => ttsService.speak(),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.stop),
                        Text("berhenti").tr(),
                      ],
                    ),
                  ),
                  onPressed: () => ttsService.stop(),
                ),
              ],
            ),
          ),
        );
      });
}
