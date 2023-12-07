import 'package:flutter/material.dart';
import 'package:formula1_pilots/constants/pilotlar.dart';
import 'package:formula1_pilots/screens/pilot_list_page.dart';

abstract class PilotsListPageViewModel extends State<PilotsListPage> {
  double myElevation = 0;
  double myToolbarHeight = 45;
  String myF1Logo = "assets/f1_logo.jpg";
  Future<List<Pilotlar>> pilotGetir() async {
    var pilotListesi = <Pilotlar>[]; //sınıfımızdan liste olusturduk
    var p1 = Pilotlar(
        1,
        "Fernando Alonso",
        "f1_alonso.jpg",
        "Aston Martin",
        2,
        "İspanya",
        "Fernando Alonso, 1981 doğumlu 2 kez Formula 1 Dünya Şampiyonu olan ‘El Nano’ lakaplı,İspanyol yarış pilotu olarak hafızalarımıza kazınmış bir isim.25 Eylül 2005’de ilk F1 Dünya Şampiyonluğu’nu kazandı veEmerson Fittipaldi’ye ait olan en genç dünya şampiyonu olma ünvanını eline aldı.Alonso, Michael Schumacher’in 5 yıl boyunca art arda kazandığı şampiyonlukları da ele geçirmiş oldu."); //nesneler
    var p2 = Pilotlar(
        2,
        "Lewis Hamilton",
        "f1_hamilton.jpg",
        "Mercedes",
        7,
        "İngiltere",
        "7 Haziran 1985 Stevenage,Hertfordshire, İngiltere, Birleşik Krallık doğumlu.Halen Formula 1'de Mercedes için süren,2007 - 2012 arası McLaren için sürmüş olan bir yarış pilotudur. 2008'de McLaren ile, 2014, 2015, 2017, 2018 ve 2019'da Mercedes ile yedi kez Formula 1 Dünya Sürücüler Şampiyonu oldu ");
    var p3 = Pilotlar(
        3,
        "Charles Leclerc",
        "f1_leclerc.jpg",
        "Ferrari",
        0,
        "Monaco",
        "Monakolu profesyonel yarış pilotudur. Ferrari Pilot Akademisi üyesi veFIA ​​Formula 2 Şampiyonu olan Leclerc, Scuderia, Haas ve 2018'de Leclerc ile kontrat imzalayan Sauber ile test yapan Leclerc,mevcut dönemde en yüksek puan alan genç pilotlardan biridir.");
    var p4 = Pilotlar(
        4,
        "Lando Norris",
        "f1_norris.jpg",
        "Mclaren",
        0,
        "İngiltere",
        " Formula 1 yarış pilotudur ve McLaren-Mercedes takımı sözleşmeli sürücüsüdür.13 Kasım 1999 yılında, Bristol, İngiltere’de doğmuştur.2017 yılında Formula 3 Avrupa Şampiyonası olarak kariyerindeki büyük çıkışı yakalayan Lando Norris,ardından 2021 yılında 15 yarış üst üste yarıştığı yarışlardan puan alarak,McLaren-Mercedes takımında bu zamana kadar 15 yarış üst üste puan alan pilotu olmayı başarmıştır.");
    var p5 = Pilotlar(5, "Checo Perez", "f1_perez.jpg", "Redbull", 0, "Meksika",
        "Meksikalı pilot son 4 senedir Redbull ile yarışıyor. Max Verstappen'in ilk şampiyonluğundaki final yarışında çok yardımı oldu.");
    var p6 = Pilotlar(
        6,
        "George Russell",
        "f1_russell.jpg",
        "Mercedes",
        0,
        "İngiltere",
        "(15 Şubat 1998 doğumlu) başlangıcını 2019 FIA Formula 1 Dünya Şampiyonası'nda Williams için yapmış,İngiliz bir yarış pilotudur. Genç formulada başarılı bir sürücü veMercedes-Benz Genç Takımı'nın bir üyesi olan, Russel başlangıcından önce Mercedes için testler yaparakve 2018'de Gümüş Oklar (Silver Arrows olarak da bilinir. Mercedes takımının takma ismidir.) ve Williams için yedek sürücü olarak F1'de tecrübe kazandı.");
    var p7 = Pilotlar(
        7,
        "Michael Schumacer",
        "f1_schumacer.jpg",
        "Ferrari",
        7,
        "Almanya",
        " 7 dünya şampiyonluğu ile (1994, 1995, 2000, 2001, 2002, 2003, 2004)istatiksel olarak bu sporun gördüğü en iyi sürücüdür.91 galibiyet, 77 en hızlı tur, 155 podyum ile diğer yarışçıların üstünde dururken17 pol ve 21 ön sıra başlangıcı ile Hamilton'un gerisinde kalıyor.");
    var p8 = Pilotlar(
        8,
        "Max Verstappen",
        "f1_verstappen.jpg",
        "Redbull",
        3,
        "Hollanda",
        "Belçika doğumlu Hollandalı Formula 1 pilotudur. Mevcut takımı Red Bull Racing'dir.Formula 1'e ilk çıkışını 17 yaşındayken 2015 Avustralya Grand Prix'sindeToro Rosso ile gerçekleştirerek, En genç Formula 1 pilotu olma unvanını yaklaşık iki yıl elinde bulundurmuştur.2014 Japonya Grand Prix'sinde ilk antrenman seansında yarışmıştır ve seanstaki en hızlı 12. turu kaydetmiştir.2016 yılının ortalarında Red Bull'a geçmesi ilebirlikte takımdaki ilk yarışı olan 2016 İspanya Grand Prix'sini kazanarakFormula 1 tarihinde yarış kazanan en genç pilot olmuştur.");
    var p9 = Pilotlar(
        9,
        "Sebastian Vettel",
        "f1_vettel.jpg",
        "Aston Martin",
        4,
        "Almanya",
        "Vettel elinde sayısız Formula 1 rekoru barındırıyor.En genç pol pozisyonu alan sürücü, En genç Dünya Şampiyonu, En genç üst üste iki kere Dünya Şampiyonu, En genç üst üste üç kere Dünya Şampiyonu,En genç üst üste dört kere Dünya Şampiyonu ve sayısız etkinlikte sayısız rekoru elinde barındırıyor.");

    pilotListesi.add(p1); //nesneleri listeye ekle
    pilotListesi.add(p2);
    pilotListesi.add(p3);
    pilotListesi.add(p4);
    pilotListesi.add(p5);
    pilotListesi.add(p6);
    pilotListesi.add(p7);
    pilotListesi.add(p8);
    pilotListesi.add(p9);

    return pilotListesi; //listeyi dondur
  }

  TextStyle pilotAdiTextStyle() {
    late double pilotFontSizeBig = 18;
    var textStyle = TextStyle(
      fontSize: pilotFontSizeBig,
    );
    return textStyle;
  }

  TextStyle takimAdiTextStyle() {
    late double teamFontSizeBig = 18;
    var textStyle =
        TextStyle(fontSize: teamFontSizeBig, fontWeight: FontWeight.bold);
    return textStyle;
  }
}
