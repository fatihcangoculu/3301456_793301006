import 'dart:ui';
import 'package:bilgiyarismasi/Hakkinda.dart';
import 'package:bilgiyarismasi/OnikiSoru.dart';
import 'package:flutter/material.dart';
import 'package:bilgiyarismasi/CoktanSecmeli.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //değişkenler değişmeyeceği için StatelessWidget kullanıldı.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //sağ üstteki debug yazısını kaldırır.
      title: "Giriş Ekranı",
      theme:
      ThemeData(primarySwatch: Colors.blue, accentColor: Colors.blue[600]),
      home: Scaffold(
          appBar: AppBar(
            title: const Center(
              child: Text(
                "      Bilgi Yarışması\nGenel Kültür Soruları",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
          ),
          body: StartupHome()),
    );
  }
}

class StartupHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _StartupHome(context);
  }
}

Widget _StartupHome(BuildContext context) {
  final startButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: Colors.blue[800],
    child: MaterialButton(
      minWidth: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => yarisma()));
        dogru_sayisi = 0;
        yanlis_sayisi = 0;
      },
      child: const Text(
        "Yarışmayı Başlat",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white, fontSize: 40.0, fontStyle: FontStyle.normal),
      ),
    ),
  );

  final aboutButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: Colors.brown[300],
    child: MaterialButton(
      minWidth: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Hakkinda()));
      },
      child: const Text(
        "Hakkında",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white, fontSize: 20.0, fontStyle: FontStyle.normal),
      ),
    ),
  );

  return Center(
    child: Container(
      child: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/bilgi_yarismasi_arkaplan.jpg"),
            const SizedBox(
              height: 15.0,
            ),
            startButton,
            const SizedBox(
              height: 10.0,
            ),
            aboutButton,
          ],
        ),
      ),
    ),
  );
}
