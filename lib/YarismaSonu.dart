import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:bilgi/CoktanSecmeli.dart';
import 'package:bilgi/main.dart';

void main() => runApp(YarismaSonu());

class YarismaSonu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.blueAccent,
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: SoruSayfasi(),
            ))));
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 230.0, bottom: 20.0),
            child: Center(
              child: Text(
                'Doğru Sayısı: ' + dogru_sayisi.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 60.0,
                  color: Colors.green[900],
                  backgroundColor: Colors.green,
                  fontFamily: 'normal',
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 230.0),
            child: Center(
              child: Text(
                'Yanlış Sayısı: ' + yanlis_sayisi.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 60.0,
                  color: Colors.red[900],
                  backgroundColor: Colors.red,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: Row(children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: RaisedButton(
                    color: Colors.white,
                    elevation: 10,
                    child: const Text(
                      "Geri Dön",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontFamily: 'normal'),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyApp()));
                    },
                  ),
                ),
              ),
            ]),
          ),
        )
      ],
    );
  }
}
