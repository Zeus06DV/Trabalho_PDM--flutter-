import 'package:flutter/material.dart';
import '/generation.dart'; 
import 'package:prova1/details.dart';
import 'package:flutter/material.dart';
import 'details.dart';

class GeracaoItem extends StatelessWidget {
  final Generation generation;

  GeracaoItem(this.generation);

  void selecionarGeracao(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => GenerationDetailScreen(generation),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => selecionarGeracao(context),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Text(
                generation.title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
