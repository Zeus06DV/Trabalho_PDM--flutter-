import 'package:flutter/material.dart';
import 'package:prova1/generation.dart';
import '/generations.dart';

class GenerationDetailScreen extends StatelessWidget {
  final Generation generation;

  GenerationDetailScreen(this.generation);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(generation.title),
      ),
       body: ListView.builder(
        itemCount: generation.pokemons.length,
        itemBuilder: (context, index) {
          return Image.asset(generation.pokemons[index]);
        }
       )
    );
  }
}
