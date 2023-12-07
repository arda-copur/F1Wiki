// ignore_for_file: use_build_context_synchronously, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:formula1_pilots/screens/login_page.dart';
import 'package:formula1_pilots/screens/user_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class LoginPageViewModel extends State<GirisPage> {
  String backgroundImage2 = "assets/f1_background2.jpg";
  String userHintText = "Kullanıcı adı";
  String passwordHintText = "Şifre";
  String buttonText = "Uygulamaya Gir";

  var tfKullaniciAdi = TextEditingController();
  var tfSifre = TextEditingController();

  var scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> girisKontrol() async {
    var ka = tfKullaniciAdi.text; //textfielddan degerleri alalım
    var s = tfSifre.text;

    if (ka == "ardacopur" && s == "123") {
      //eşleşme kontrolü
      var sp = await SharedPreferences.getInstance();

      sp.setString("kullaniciAdi", ka);
      sp.setString("sifre", s);
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => UserPage()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Kullanıcı adı veya şifre yanlış")));
    }
  }
}
