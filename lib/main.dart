import 'package:flutter/material.dart';

import './questionário.dart';
import './resposta';
import './questao';

void main() {
  runApp(AulaComponentes());
}

class AulaComponentes extends StatefulWidget {
  @override
  State<AulaComponentes> createState() => _AulaComponentesState();
}

class _AulaComponentesState extends State<AulaComponentes> {
  var perguntaAtual = 0;
  var cor = Colors.white;

  final List<Map<String, Object>> perguntas = [
    {
      "texto": "Qual a sua cor favorita?",
      "respostas": ["Amarelo", "Preto", "Branco", "Azul", "Vermelho"]
    },
    {
      "texto": "Qual é seu animal favorito?",
      "respostas": ["Cachorro", "Gato", "Tartaruga", "Periquito"]
    },
    {
      "texto": "Qual sua linguagem favorita?",
      "respostas": ["Python", "Java", "JavaScript"]
    },
  ];

  bool get temPergunta {
    return perguntaAtual < perguntas.length;
  }

  void acao() {
    setState(() {
      perguntaAtual++;
    });
    print(perguntaAtual);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: temPergunta
              ? Questao(perguntas[perguntaAtual]["texto"].toString())
              : Questao("Terminou"),
        ),
        body: temPergunta
            ? Questionario(
                perguntas: perguntas,
                perguntaAtual: perguntaAtual,
                onRespostaSelecionada: () => acao(),
              )
            : Text("Resultado"),
      ),
    );
  }
}