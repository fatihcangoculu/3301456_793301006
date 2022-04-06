import 'package:bilgiyarismasi/CoktanSecmeli.dart';
import 'package:flutter/material.dart';
import 'package:bilgiyarismasi/YarismaSonu.dart';

class yarisma extends StatefulWidget {
  @override
  _yarismaState createState() => _yarismaState();
}

class _yarismaState extends State<yarisma> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Center(
                child: Text(
                  (sayac + 1).toString() +
                      "-) " +
                      BenimTestim.soru_metnini_yaz(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (sayac >= 11) {
                              BenimTestim.cevabi_kontrol_et("A");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => YarismaSonu()));
                              sayac = 0;
                            } else {
                              BenimTestim.cevabi_kontrol_et("A");
                            }
                          });
                        },
                        child: Text(BenimTestim.a_sikki_yaz(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 20.0)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (sayac >= 11) {
                              BenimTestim.cevabi_kontrol_et("B");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => YarismaSonu()));
                              sayac = 0;
                            } else {
                              BenimTestim.cevabi_kontrol_et("B");
                            }
                          });
                        },
                        child: Text(BenimTestim.b_sikki_yaz(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 20.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (sayac >= 11) {
                              BenimTestim.cevabi_kontrol_et("C");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => YarismaSonu()));
                              sayac = 0;
                            } else {
                              BenimTestim.cevabi_kontrol_et("C");
                            }
                          });
                        },
                        child: Text(BenimTestim.c_sikki_yaz(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 20.0)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (sayac >= 11) {
                              BenimTestim.cevabi_kontrol_et("D");
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => YarismaSonu()));
                              sayac = 0;
                            } else {
                              BenimTestim.cevabi_kontrol_et("D");
                            }
                          });
                        },
                        child: Text(BenimTestim.d_sikki_yaz(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 20.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
