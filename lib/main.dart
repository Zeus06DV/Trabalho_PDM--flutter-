import 'package:flutter/material.dart';

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
            : Resultado(
                perguntas: perguntas,
                respostasSelecionadas: Questionario.respostasSelecionadas,
              ),
      ),
    );
  }
}

class Questao extends StatelessWidget {
  final String texto;

  Questao(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        texto,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class Resposta extends StatelessWidget {
  final String texto;
  final void Function() onSelecao;

  Resposta(this.texto, this.onSelecao);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(texto),
        onPressed: onSelecao,
      ),
    );
  }
}

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaAtual;
  final void Function() onRespostaSelecionada;
  static List<String> respostasSelecionadas = [];

  Questionario({
    required this.perguntas,
    required this.perguntaAtual,
    required this.onRespostaSelecionada,
  });

  @override
  Widget build(BuildContext context) {
    List<String> respostas =
        perguntas[perguntaAtual]["respostas"] as List<String>;
    return Column(
      children: [
        ...(respostas.map((resposta) {
          return Resposta(resposta, () {
            respostasSelecionadas.add(resposta);
            onRespostaSelecionada();
          });
        })).toList(),
      ],
    );
  }
}

class Resultado extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final List<String> respostasSelecionadas;

  Resultado({required this.perguntas, required this.respostasSelecionadas});

  List<String> getRespostas() {
    List<String> respostas = [];
    for (var i = 0; i < perguntas.length; i++) {
      String pergunta = perguntas[i]["texto"].toString();
      String resposta = respostasSelecionadas[i];
      respostas.add('$pergunta: $resposta');
    }
    return respostas;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas = getRespostas();
    return Column(
      children: [
        Text(
          'Respostas:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        ...respostas.map((resposta) => Text(resposta)).toList(),
      ],
    );
  }
}
