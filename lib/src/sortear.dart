// ignore_for_file: override_on_non_overriding_member

import 'dart:math';

import 'package:flutter/material.dart';

// You can also test with your own ad unit IDs by registering your device as a
// test device. Check the logs for your device's ID value.

class Sortear extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _SortearState createState() => _SortearState();
}

class _SortearState extends State<Sortear> {
   @override
  Widget build(BuildContext context) {
    final List dezenas = [];
    int dezena = 0;
    setState(() {
      int r = 60; //range de numeros
      int d = 6; // qtd de dezenas
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
        title: const Text('Teste Logica'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              dezenas.join(', '),
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 50,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text('gerar'))
          ],
        ),
      ),
    );
  }
}