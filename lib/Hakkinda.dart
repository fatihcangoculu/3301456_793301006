import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:bilgiyarismasi/main.dart';

class Hakkinda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hakkında",
      theme:
      ThemeData(primarySwatch: Colors.blue, accentColor: Colors.blueAccent),
      home: Scaffold(
        appBar: AppBar(
            title: const Text(
              "Hakkında",
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            )),
        body: abouttt(context),
      ),
    );
  }
}

Widget abouttt(BuildContext context) {
  final aboutButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: Colors.blueAccent,
    child: MaterialButton(
      minWidth: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MyApp()));
      },
      child: const Text(
        "Geri Dön",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Colors.white, fontSize: 20.0, fontStyle: FontStyle.normal),
      ),
    ),
  );

  return Center(
    child: Container(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 350.0,
            ),
            Text(
              "Bu uygulama Selçuk Üniversitesi Bilgisayar Mühendisliği Bölümü 793301006 nolu öğrencisi Fatih Can Göçülü tarafından yapılmıştır.",
              style: TextStyle(fontSize: 20, fontFamily: 'normal'),
            ),
            const SizedBox(
              height: 350.0,
            ),
            aboutButton,
          ],
        ),
      ),
    ),
  );
}
