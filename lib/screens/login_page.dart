// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:formula1_pilots/utilitys/project_utilitys.dart';
import 'package:formula1_pilots/view-models/login_page_viewmodel.dart';

class GirisPage extends StatefulWidget {
  const GirisPage({super.key});

  @override
  State<GirisPage> createState() => _GirisPageState();
}

class _GirisPageState extends LoginPageViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.asset(
            backgroundImage2,
            fit: BoxFit.cover,
          )),
          Center(
            child: Padding(
              padding: PaddingUtilitys().mediumPadding,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: tfKullaniciAdi,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person,
                          color: ColorsUtilitys().projectThemeColor),
                      hintText: userHintText,
                      border: const OutlineInputBorder(),
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadiusUtilitys().mediumCircularBorderRadius,
                          borderSide: BorderSide(
                              color: ColorsUtilitys().projectThemeColor,
                              width: SizeUtilitys().borderSideWidth)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                            BorderRadiusUtilitys().mediumCircularBorderRadius,
                        borderSide: BorderSide(
                            color: ColorsUtilitys().projectThemeColor,
                            width: SizeUtilitys().borderSideWidth),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    controller: tfSifre,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.key,
                        color: ColorsUtilitys().projectThemeColor,
                      ),
                      hintText: passwordHintText,
                      border: const OutlineInputBorder(),
                      enabled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius:
                            BorderRadiusUtilitys().mediumCircularBorderRadius,
                        borderSide: BorderSide(
                            color: ColorsUtilitys().projectThemeColor,
                            width: SizeUtilitys().borderSideWidth),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                            BorderRadiusUtilitys().mediumCircularBorderRadius,
                        borderSide: BorderSide(
                            color: ColorsUtilitys().projectThemeColor,
                            width: SizeUtilitys().borderSideWidth),
                      ),
                    ),
                  ),
                  SizedBox(height: SizeUtilitys().sizedBoxMediumHeight),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: ColorsUtilitys().projectThemeColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        minimumSize: SizeUtilitys().minimumSize),
                    onPressed: () {
                      girisKontrol();
                    },
                    child: Text(
                      buttonText,
                      style: TextStyle(
                          color: ColorsUtilitys().whiteTextColor,
                          fontWeight: FontUtilitys().highFontWeight,
                          fontSize: FontUtilitys().mediumFontSize),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
