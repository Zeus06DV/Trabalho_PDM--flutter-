import 'package:flutter/material.dart';
import 'colors.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> botoes = []; // uma lista de widgets (botões)
  String textobotao = '';
  Color corzinha = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Botão Dinâmico'),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          color: corzinha,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                onChanged: (Text) {
                textobotao = Text;
                print(textobotao);
              }),
           ElevatedButton(onPressed:(){setState(() {
             corzinha:
             corzinha =  cor(0);
           });} , child:Text("Tela Azul")),
           ElevatedButton(onPressed:(){ setState(() {
             corzinha:
             corzinha =  cor(1);
           });} , child: Text("Tela Verde")),
           ElevatedButton(onPressed:(){ setState(() {
             corzinha:
             corzinha =  cor(2);
           });} , child: Text("Tela Preta")),
            ],
          ),
        ),
      ),
    );
  }
}