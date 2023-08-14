class Item {
  final int id;
  final String title;
  final String description;

  Item({required this.id, required this.title, required this.description});
}

List<Item> mockItems = [
  Item(
    id: 1,
    title: "Tarefa 1",
    description: "Este é o primeiro teste",
  ),
  Item(
    id: 2,
    title: "Tarefa 2",
    description: "Este é o segundo teste",
  ),
  Item(
    id: 3,
    title: "Tarefa 3",
    description: "Este é o segundo teste",
  ),
];
