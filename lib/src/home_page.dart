import 'package:flutter/material.dart';
import 'package:loteria/src/lotofacil.dart';
import 'package:loteria/src/mega_sena.dart';


class Home extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

enum Jogo { mega, loto }

class _HomeState extends State<Home> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
                padding: EdgeInsets.only(top: 150, left: 0, right: 0),
                child: Text(
                  "Escolha qual jogo deseja Sortear!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            const Padding(padding: EdgeInsets.all(30.0)),
            const Padding(padding: EdgeInsets.all(30.0)),
            ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0)))),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MegaSena()));
              },
              child: const Text(
                "Mega-Sena",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.green,
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.all(30.0)),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: (MaterialStateProperty.all(Colors.green)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.0)))),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Lotofacil()));
              },
              child: const Text(
                "Lotofácil",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.amber,
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.all(20.0)),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: (MaterialStateProperty.all(Colors.green)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.0)))),
              onPressed: () {
                // Navigator.push(context,                    MaterialPageRoute(builder: (context) => WebScraperApp()));
              },
              child: const Text(
                "teste",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.amber,
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.all(30.0)),
            const Text(
              " Boa Sorte !!!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.green,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
