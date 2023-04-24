import 'package:flutter/material.dart';

void main() {
  runApp(ComponenteInicial());
}

class ComponenteInicial extends StatelessWidget {
  void eventoBotao() {
    print("Clicou");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Perguntas e Respostas"),
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: eventoBotao,
                    child: Text("Enviar"),
                  ),
                  ElevatedButton(
                    onPressed: eventoBotao,
                    child: Text("Cancelar"),
                  ),
                  ElevatedButton(
                    onPressed: eventoBotao,
                    child: Text("Salvar"),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Text("Aprendendo"),
                  Text("Programação"),
                  Text("Flutter"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
