import 'package:flutter/material.dart';
import 'package:formula1_pilots/constants/pilotlar.dart';
import 'package:formula1_pilots/screens/pilot_page.dart';
import 'package:formula1_pilots/utilitys/project_utilitys.dart';
import 'package:formula1_pilots/view-models/pilots_list_page_viewmodel.dart';

class PilotsListPage extends StatefulWidget {
  const PilotsListPage({super.key});

  @override
  State<PilotsListPage> createState() => _PilotsListPageState();
}

class _PilotsListPageState extends PilotsListPageViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: SizeUtilitys().prefferedHightSize,
        child: AppBar(
          backgroundColor: ColorsUtilitys().appbarTransparentColor,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: ColorsUtilitys().projectRedColor,
              )),
          elevation: myElevation,
          toolbarHeight: myToolbarHeight,
          flexibleSpace: Image(
            image: AssetImage(myF1Logo),
            fit: BoxFit.cover,
          ),
        ),
      ),
      body: FutureBuilder<List<Pilotlar>>(
        future: pilotGetir(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var pilotListesi = snapshot.data;
            return ListView.builder(
              itemCount: pilotListesi!.length,
              itemBuilder: (context, index) {
                var pilot = pilotListesi[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PilotPage(pilot: pilot)));
                  },
                  child: Card(
                    child: Row(
                      children: [
                        SizedBox(
                            height: SizeUtilitys().sizedBoxMediumHeight,
                            width: SizeUtilitys().sizedBoxMediumWidth,
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/${pilot.pilot_resim_adi}"),
                            )),
                        Padding(
                          padding: PaddingUtilitys().constantPadding,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                pilot.pilot_adi,
                                style: pilotAdiTextStyle(),
                              ),
                              Padding(
                                padding: PaddingUtilitys().onlyTopPadding,
                                child: Text(
                                  pilot.takim_adi,
                                  style: takimAdiTextStyle(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Padding(
                              padding: PaddingUtilitys().onlyRightPadding,
                              child:
                                  const Icon(Icons.arrow_forward_ios_outlined),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center();
          }
        },
      ),
    );
  }
}
