import 'package:flutter/material.dart';
import 'package:formula1_pilots/constants/pilotlar.dart';
import 'package:formula1_pilots/utilitys/project_utilitys.dart';

class PilotPage extends StatelessWidget {
  final Pilotlar pilot;
  final double myElevation = 5;
  final double myLetterSpacing = 2;
  final double myRadius = 80;
  final String myKupa = "Kupa";
  final String myTeam = "Takım";
  final String myCountry = "Ülke";
  final String myBio = "Bio";
  const PilotPage({Key? key, required this.pilot}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    ColorsUtilitys().projectRedColor,
                    ColorsUtilitys().projectBlackColor
                  ],
                ),
              ),
              child: SizedBox(
                width: double.infinity,
                height: SizeUtilitys().containerOverHeight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: PaddingUtilitys().onlyLeftPadding,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    ColorsUtilitys().projectSecondColor)),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: ColorsUtilitys().whiteTextColor,
                            )),
                      ),
                    ),
                    CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/${pilot.pilot_resim_adi}",
                        ),
                        radius: myRadius),
                    SizedBox(height: SizeUtilitys().sizedBoxMinHeight),
                    Text(
                      pilot.pilot_adi,
                      style: TextStyle(
                        fontSize: FontUtilitys().midFontSize,
                        color: ColorsUtilitys().whiteTextColor,
                      ),
                    ),
                    SizedBox(
                      height: SizeUtilitys().sizedBoxMinHeight,
                    ),
                    Card(
                      margin: PaddingUtilitys().symmetricPadding,
                      clipBehavior: Clip.antiAlias,
                      color: ColorsUtilitys().whiteTextColor,
                      elevation: myElevation,
                      child: Padding(
                        padding: PaddingUtilitys().symmetricSecondPadding,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    myKupa,
                                    style: TextStyle(
                                      color: ColorsUtilitys().projectRedColor,
                                      fontSize: FontUtilitys().midFontSize,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height:
                                        SizeUtilitys().sizedBoxMinHeight / 2,
                                  ),
                                  Text(
                                    "${pilot.kupa_sayisi}",
                                    style: TextStyle(
                                      fontSize:
                                          FontUtilitys().secondMediumFontSize,
                                      color: ColorsUtilitys()
                                          .projectRedAccentColor,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    myTeam,
                                    style: TextStyle(
                                      color: ColorsUtilitys()
                                          .projectRedAccentColor,
                                      fontSize: FontUtilitys().midFontSize,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height:
                                        SizeUtilitys().sizedBoxMinHeight / 2,
                                  ),
                                  Text(
                                    pilot.takim_adi,
                                    style: TextStyle(
                                        fontSize:
                                            FontUtilitys().secondMediumFontSize,
                                        color: ColorsUtilitys()
                                            .projectRedAccentColor),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    myCountry,
                                    style: TextStyle(
                                      color: ColorsUtilitys().projectRedColor,
                                      fontSize: FontUtilitys().midFontSize,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height:
                                        SizeUtilitys().sizedBoxMinHeight / 2,
                                  ),
                                  Text(
                                    pilot.ulkesi,
                                    style: TextStyle(
                                        fontSize:
                                            FontUtilitys().secondMediumFontSize,
                                        color: ColorsUtilitys()
                                            .projectRedAccentColor),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: PaddingUtilitys().symmetricThirdPadding,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      myBio,
                      style: TextStyle(
                          color: ColorsUtilitys().projectRedColor,
                          fontStyle: FontStyle.normal,
                          fontSize: FontUtilitys().midSecondFontSize),
                    ),
                    SizedBox(height: SizeUtilitys().sizedBoxMinHeight),
                    Text(
                      pilot.biosu,
                      style: TextStyle(
                        fontSize: FontUtilitys().midFontSize,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontUtilitys().lowFontWeight,
                        color: ColorsUtilitys().projectBlackColor,
                        letterSpacing: myLetterSpacing,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
