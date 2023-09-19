import 'package:flutter/material.dart';
import 'package:prova1/generation.dart'; 
import 'package:prova1/geracao.dart'; 
import 'package:prova1/generations.dart'; 
void main() {
  runApp(PokemonApp());
}

class PokemonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GenerationsScreen(generations),
    );
  }
}

class GenerationsScreen extends StatelessWidget {
  final List<Generation> generations;

  GenerationsScreen(this.generations);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gerações de Pokémon'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: generations.length,
        itemBuilder: (ctx, index) {
          return GeracaoItem(generations[index]);
        },
      ),
    );
  }
}
