import 'package:flutter/material.dart';
import 'package:formula1_pilots/utilitys/project_utilitys.dart';
import 'package:formula1_pilots/widgets/my_timeline_tile.dart';

class YarislarPage extends StatefulWidget {
  const YarislarPage({super.key});

  @override
  State<YarislarPage> createState() => _YarislarPageState();
}

class _YarislarPageState extends State<YarislarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsUtilitys().projectThemeColor,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text("2023 Yarış Takvimi"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: ListView(
          children: const [
            MyTimeLineTile(
              isFirst: true,
              isLast: false,
              yarisAdi: "Bahreyn GP - 5 Mart",
            ),
            MyTimeLineTile(
              isFirst: false,
              isLast: false,
              yarisAdi: "Suudi Arabistan GP - 19 Mart",
            ),
            MyTimeLineTile(
              isFirst: false,
              isLast: false,
              yarisAdi: "Avustralya GP - 2 Nisan",
            ),
            MyTimeLineTile(
              isFirst: false,
              isLast: false,
              yarisAdi: "Azerbaycan GP - 30 Nisan",
            ),
            MyTimeLineTile(
              isFirst: false,
              isLast: false,
              yarisAdi: "Miami GP - 7 Mayıs",
            ),
            MyTimeLineTile(
              isFirst: false,
              isLast: false,
              yarisAdi: "Monako GP - 28 Mayıs",
            ),
            MyTimeLineTile(
              isFirst: false,
              isLast: false,
              yarisAdi: "İspanya GP - 4 Haziran",
            ),
            MyTimeLineTile(
              isFirst: false,
              isLast: false,
              yarisAdi: "Kanada GP - 18 Haziran",
            ),
            MyTimeLineTile(
              isFirst: false,
              isLast: false,
              yarisAdi: "Avusturya GP - 2 Temmuz",
            ),
            MyTimeLineTile(
              isFirst: false,
              isLast: false,
              yarisAdi: "Britanya GP - 9 Temmuz",
            ),
            MyTimeLineTile(
              isFirst: false,
              isLast: false,
              yarisAdi: "Macaristan GP - 23 Temmuz",
            ),
            MyTimeLineTile(
              isFirst: false,
              isLast: false,
              yarisAdi: "Belçika GP - 30 Temmuz",
            ),
            MyTimeLineTile(
              isFirst: false,
              isLast: false,
              yarisAdi: "Hollanda GP - 27 Ağustos",
            ),
            MyTimeLineTile(
              isFirst: false,
              isLast: false,
              yarisAdi: "İtalya GP - 3 Eylül",
            ),
            MyTimeLineTile(
              isFirst: false,
              isLast: false,
              yarisAdi: "Singapur GP - 17 Eylül",
            ),
            MyTimeLineTile(
              isFirst: false,
              isLast: false,
              yarisAdi: "Japonya GP - 24 Eylül",
            ),
            MyTimeLineTile(
              isFirst: false,
              isLast: false,
              yarisAdi: "Katar GP - 8 Ekim",
            ),
            MyTimeLineTile(
              isFirst: false,
              isLast: false,
              yarisAdi: "Amerika GP - 22 Ekim",
            ),
            MyTimeLineTile(
              isFirst: false,
              isLast: false,
              yarisAdi: "Meksika GP - 29 Ekim",
            ),
            MyTimeLineTile(
              isFirst: false,
              isLast: false,
              yarisAdi: "Brezilya GP - 5 Kasım",
            ),
            MyTimeLineTile(
              isFirst: false,
              isLast: false,
              yarisAdi: "Las Vegas GP - 19 Kasım",
            ),
            MyTimeLineTile(
              isFirst: false,
              isLast: true,
              yarisAdi: "Abu Dabi GP - 26 Kasım",
            ),
          ],
        ),
      ),
    );
  }
}
