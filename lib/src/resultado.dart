import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loteria/src/lotofacil.dart';
import 'package:loteria/src/mega_sena.dart';

// ignore: must_be_immutable
class Resultado extends StatefulWidget {
  const Resultado({super.key});

  
  @override
  ResultadoState createState() => ResultadoState();
}

class ResultadoState extends State<Resultado> {
  var valoresSorteados = [];
  String sorteados = "";

  List shuffle(List items) {
    var random = Random();

    for (var i = items.length - 1; i > 0; i--) {
      var n = random.nextInt(i + 1);

      var temp = items[i];
      items[i] = items[n];
      items[n] = temp;
    }

    return items;
  }

 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Números sorteados"),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 70,
            ),
            Text(
              '',
              textAlign: TextAlign.center ,
              style: const TextStyle(
                fontSize: 34,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              'Powered by',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
