import 'package:flutter_tts/flutter_tts.dart';
import 'package:infografis_daging_sapi/models/resep_models.dart';
import 'package:easy_localization/easy_localization.dart';

class TtsService {
  TtsService({
    required this.language,
    required this.resepData,
    this.speechRate = 0.9,
  });

  final FlutterTts flutterTts = FlutterTts();
  final String language;
  final ResepModel resepData;
  final double speechRate;

  String ttsState = "stop";

  get isPlaying => ttsState == "play";
  get isStopped => ttsState == "stop";

  String getKalimat() {
    final String nama = resepData.nama[language];
    late String bahan = "";
    for (var item in resepData.bahan[language]) {
      bahan += "$item, ";
    }

    late String cara = "";
    var no = 1;
    for (var item in resepData.cara[language]) {
      cara += "$no. $item";
      no++;
    }

    final String kalimat = tr("kalimat_tts", args: [nama, bahan, cara]);
    return kalimat;
  }

  Future speak() async {
    await flutterTts.setLanguage(language);
    await flutterTts.setSpeechRate(speechRate);
    var result = await flutterTts.speak(getKalimat());
    if (result == 1) ttsState = "play";
  }

  Future stop() async {
    var result = await flutterTts.stop();
    if (result == 1) ttsState = "stop";
  }
}
