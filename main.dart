import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_app/botoes.dart';

main() {
  runApp(atvbotao());
}

class atvbotao extends StatefulWidget {
  @override
  State<atvbotao> createState() => _atvbotaoState();
}

class _atvbotaoState extends State<atvbotao> {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Atividade botão"),
          ),
          body: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 200, vertical: 20),
            child: Column(
              children: [
                Text("botão criado por componente:"),
                Botao("eu sou um botao"),
              ],
            ),
          )),
    );
  }
}
