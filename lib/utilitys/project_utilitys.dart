import 'package:flutter/material.dart';

class ColorsUtilitys {
   final Color projectThemeColor = const Color.fromARGB(255, 221, 71, 60);
   final Color projectSecondColor = const Color.fromARGB(255, 165, 53, 45);
   final Color whiteTextColor = Colors.white;
   final Color appbarTransparentColor = Colors.transparent;
   final Color projectRedColor = Colors.red;
   final Color projectRedAccentColor = Colors.redAccent;
   final Color projectBlackColor = Colors.black;
}

class SizeUtilitys {
   final Size minimumSize = const Size(40, 40);
   final Size prefferedHightSize = const Size.fromHeight(40);
   final double containerOverHeight = 420;
   final double sizedBoxOverHeight = 300;
   final double sizedBoxHightHeight = 150;
   final double sizedBoxMediumHeight = 100;
   final double sizedBoxLowHeight = 50;
   final double sizedBoxMinHeight = 10;
   final double sizedBoxOverWidth = 300;
   final double sizedBoxHightWidth = 150;
   final double sizedBoxMediumWidth = 100;
   final double sizedBoxLowWidth = 50;
   final double borderSideWidth = 2.5;
}



class BorderRadiusUtilitys {
   final highCircularBorderRadius = BorderRadius.circular(20);
   final mediumCircularBorderRadius = BorderRadius.circular(14);
   final lowCircularBorderRadius = BorderRadius.circular(8);
}

class FontUtilitys {
   final highFontWeight = FontWeight.w900;
   final lowFontWeight = FontWeight.w300; 
   final double highFontSize = 30;
   final double midSecondFontSize = 28;
   final double midFontSize = 22;
   final double secondMediumFontSize = 20;
   final double mediumFontSize = 15;
}

class PaddingUtilitys {
   final highPadding =  const EdgeInsets.all(30.0);
   final midPadding = const EdgeInsets.all(25);
   final mediumPadding = const EdgeInsets.all(20.0);
   final lowPadding = const EdgeInsets.all(10);
   final constantPadding = const EdgeInsets.all(8);
   final onlyTopPadding = const EdgeInsets.only(top:30);
   final onlyRightPadding = const EdgeInsets.only(right:18);
   final onlyLeftPadding = const EdgeInsets.only(left: 8);
   final symmetricPadding = const EdgeInsets.symmetric(horizontal: 20,vertical: 5);
   final symmetricSecondPadding = const EdgeInsets.symmetric(horizontal: 8,vertical: 22);
   final symmetricThirdPadding = const EdgeInsets.symmetric(vertical: 30,horizontal: 16);
}