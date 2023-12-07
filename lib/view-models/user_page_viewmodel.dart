// ignore_for_file: use_build_context_synchronously, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:formula1_pilots/screens/login_page.dart';
import 'package:formula1_pilots/screens/user_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class UserPageViewModel extends State<UserPage> {
  String spKullaniciAdi = "Kullanıcı Adı Yok";
  String spSifre = "Şifre Yok";
  String pilotlarText = "Pilotlar";
  String yarislarText = "Yarışlar";
  String outText = "Çıkış";
  late String welcomeText = "Hoşgeldin $spKullaniciAdi";
  String backgroundGif = "assets/f1_gif9.gif";

  Future<void> oturumBilgisiOku() async {
    var sp = await SharedPreferences.getInstance();

    setState(() {
      spKullaniciAdi = sp.getString("kullaniciAdi") ?? "Kullanıcı Adı Yok";
      spSifre = sp.getString("sifre") ?? "Şifre Yok";
    });
  }

  Future<void> cikisYap() async {
    var sp = await SharedPreferences.getInstance();

    sp.remove("kullaniciAdi");
    sp.remove("sifre");

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => GirisPage()));
  }

  @override
  void initState() {
    super.initState();
    oturumBilgisiOku();
  }
}
