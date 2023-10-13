// ignore_for_file: override_on_non_overriding_member

import 'dart:math';

import 'package:flutter/material.dart';

// You can also test with your own ad unit IDs by registering your device as a
// test device. Check the logs for your device's ID value.

class Lotofacil extends StatefulWidget {
  const Lotofacil({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LotofacilState createState() => _LotofacilState();
}

class _LotofacilState extends State<Lotofacil> {
  @override
  Widget build(BuildContext context) {
    final List dezenas = [];
    int dezena = 0;
    setState(() {
      int r = 25; //range de numeros
      int d = 15; // qtd de dezenas
      // int dezena = 0;
      Random random = Random();
      while (dezenas.length < d) {
        dezena = random.nextInt(r + 1);
        if (dezena > 0 && !dezenas.contains(dezena)) {
          dezenas.add(dezena);
          dezenas.sort();

          print(dezenas.join(','));
        }
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lotofácil'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(bottom: 1),
            ),
            SizedBox(
              height: 250,
              child: Image.asset('assets/images/lotofacil.png'),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 1),
            ),
            Text(
              dezenas.join(', '),
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 45,
              ),
            ),
            const Padding(padding: EdgeInsets.all(18.0)),
            ElevatedButton(style: ButtonStyle(
                  backgroundColor: (MaterialStateProperty.all(Colors.green)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.0)))),
              onPressed: () {
                setState(() {});
              },
              child: const Text('Sortear',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.amber,
                ),),
            ),
            
          ],
        ),
      ),
    );
  }
}
