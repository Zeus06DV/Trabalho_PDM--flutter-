import 'package:flutter/material.dart';
import 'mock_data.dart';

void main() {
  runApp(TarefaApp());
}

class TarefaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarefa App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TarefaListScreen(),
    );
  }
}

class TarefaListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista de Tarefas')),
      body: ListView.builder(
        itemCount: mockItems.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(mockItems[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TarefaDetailScreen(item: mockItems[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class TarefaDetailScreen extends StatelessWidget {
  final Item item;

  TarefaDetailScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalhes da Tarefa')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Título: ${item.title}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Descrição: ${item.description}'),
          ],
        ),
      ),
    );
  }
}
