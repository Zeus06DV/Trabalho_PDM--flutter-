import 'package:flutter/material.dart';
import 'mock_data.dart';
import 'produtos.dart';

void main() {
  runApp(ProdutoApp());
}

class ProdutoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Produto App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProdutoListScreen(),
    );
  }
}

class ProdutoListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista de Produtos')),
      body: ListView.builder(
        itemCount: mockProdutos.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(mockProdutos[index].nome),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProdutoDetailScreen(item: mockProdutos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class ProdutoDetailScreen extends StatelessWidget {
  final Produto item;

  ProdutoDetailScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalhes do Produto')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nome: ${item.nome}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Descrição: ${item.descricao}'),
            SizedBox(height: 10),
            Text('Preço: R\$ ${item.preco.toStringAsFixed(2)}'),
            Image.network(item.imagemUrl),
          ],
        ),
      ),
    );
  }
}
