// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:formula1_pilots/screens/login_page.dart';
import 'package:formula1_pilots/utilitys/project_utilitys.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final String backgroundImage = "assets/f1_background.jpg";
  final String girisyapText = "Giriş Yap";
  final String cikisyapText = "Çıkış Yap";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              backgroundImage,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorsUtilitys().projectThemeColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      minimumSize: SizeUtilitys().minimumSize),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => GirisPage()));
                  },
                  child: Text(
                    girisyapText,
                    style: TextStyle(
                        color: ColorsUtilitys().whiteTextColor,
                        fontWeight: FontUtilitys().highFontWeight,
                        fontSize: FontUtilitys().mediumFontSize),
                  ),
                ),
                SizedBox(height: SizeUtilitys().sizedBoxOverHeight),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: ColorsUtilitys().projectThemeColor,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadiusUtilitys().highCircularBorderRadius),
                      minimumSize: SizeUtilitys().minimumSize),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    cikisyapText,
                    style: TextStyle(
                        color: ColorsUtilitys().whiteTextColor,
                        fontWeight: FontUtilitys().highFontWeight,
                        fontSize: FontUtilitys().mediumFontSize),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
