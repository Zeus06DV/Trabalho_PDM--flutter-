import 'package:flutter/material.dart';
import 'dart:math';

class Ficha extends StatelessWidget {
  final String imageUrl;
  final String nome;
  final int matricula;
  final String escola;
  final String ano;
  final String periodo;

  Ficha({
    required this.imageUrl,
    required this.nome,
    required this.matricula,
    required this.escola,
    required this.ano,
    required this.periodo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 3,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              imageUrl,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nome: $nome',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 8),
                Text('Matrícula: $matricula'),
                Text('Escola: $escola'),
                Text('Ano: $ano'),
                Text('Período: $periodo'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Ficha> fichas = [
    Ficha(
      imageUrl:
          'https://kanto.legiaodosherois.com.br/w760-h398-cfill/wp-content/uploads/2021/11/legiao_rbuX81dSNDFB.jpg.webp',
      nome: 'João',
      matricula: Random().nextInt(100000),
      escola: 'UFMG',
      ano: '2023',
      periodo: '6° Período',
    ),
    Ficha(
      imageUrl:
          'https://kanto.legiaodosherois.com.br/w760-h398-cfill/wp-content/uploads/2021/11/legiao_e1wvD4rFNJUu.jpg.webp',
      nome: 'Miguel',
      matricula: Random().nextInt(100000),
      escola: 'UFLA',
      ano: '2023',
      periodo: '8° Período',
    ),
    Ficha(
      imageUrl:
          'https://kanto.legiaodosherois.com.br/w760-h398-cfill/wp-content/uploads/2021/11/legiao_lObZ0Lkv79ih.jpg.webp',
      nome: 'Rafael',
      matricula: Random().nextInt(100000),
      escola: 'UFV',
      ano: '2023',
      periodo: '2° Período',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ficha de Alunos'),
        ),
        body: ListView.builder(
          itemCount: fichas.length,
          itemBuilder: (ctx, index) {
            return fichas[index];
          },
        ),
      ),
    );
  }
}
