import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final String texto;

  Botao(this.texto);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print("clicou");
      },
      child: Text(texto),
    );
  }
}
