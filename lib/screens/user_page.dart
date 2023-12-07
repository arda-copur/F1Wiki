import 'package:flutter/material.dart';
import 'package:formula1_pilots/screens/pilot_list_page.dart';
import 'package:formula1_pilots/screens/yaris_page.dart';
import 'package:formula1_pilots/utilitys/project_utilitys.dart';
import 'package:formula1_pilots/view-models/user_page_viewmodel.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends UserPageViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(
            backgroundGif,
            fit: BoxFit.fill,
          )),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: SizeUtilitys().borderSideWidth,
                ),

                Text(
                  welcomeText,
                  style: TextStyle(
                      fontSize: FontUtilitys().highFontSize,
                      fontWeight: FontUtilitys().highFontWeight,
                      color: ColorsUtilitys().whiteTextColor),
                ),
                SizedBox(height: SizeUtilitys().sizedBoxLowHeight),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorsUtilitys().projectThemeColor,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadiusUtilitys().highCircularBorderRadius,
                          ),
                          minimumSize: SizeUtilitys().minimumSize),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PilotsListPage()));
                        // İlk butona basıldığında yapılacak işlemler
                      },
                      child: Text(
                        pilotlarText,
                        style: TextStyle(
                            color: ColorsUtilitys().whiteTextColor,
                            fontWeight: FontUtilitys().highFontWeight,
                            fontSize: FontUtilitys().mediumFontSize),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorsUtilitys().projectThemeColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          minimumSize: SizeUtilitys().minimumSize),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const YarislarPage()));
                      },
                      child: Text(
                        yarislarText,
                        style: TextStyle(
                            color: ColorsUtilitys().whiteTextColor,
                            fontWeight: FontUtilitys().highFontWeight,
                            fontSize: FontUtilitys().mediumFontSize),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: ColorsUtilitys().projectThemeColor,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadiusUtilitys().highCircularBorderRadius,
                          ),
                          minimumSize: SizeUtilitys().minimumSize),
                      onPressed: () {
                        cikisYap();
                      },
                      child: Text(
                        outText,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontUtilitys().highFontWeight,
                            fontSize: FontUtilitys().mediumFontSize),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
