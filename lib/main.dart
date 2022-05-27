// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _phrases = [
    "Quando fala o amor, a voz de todos os deuses deixa o céu embriagado de harmonia.",
    "Conhece-te a ti mesmo e conhecerás o universo e os deuses.",
    "É estupidez pedir aos deuses aquilo que se pode conseguir sozinho.",
    "Não espere por uma crise para descobrir o que é importante em sua vida."
  ];

  var _generatorPhrases = "Clique abaixo para gerar uma frase!";

  void __phrasesGenerator(){

    
    setState(() {
      var sortNumber = Random().nextInt(_phrases.length);
      _generatorPhrases = _phrases[sortNumber];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Image.asset("images/logo.png"),
          Text(
            _generatorPhrases,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.italic,
              color: Colors.black
            ),
            ),
            RaisedButton(
              onPressed: __phrasesGenerator,
              color: Colors.green,
              child: Text(
                "Nova Frase",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
                ),
            ),
        ],),
      ),
      ),
    );
  }
}