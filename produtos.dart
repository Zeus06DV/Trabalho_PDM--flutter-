class Produto {
  final int id;
  final String nome;
  final String descricao;
  final double preco;
  final String imagemUrl;

  Produto({
    required this.id,
    required this.nome,
    required this.descricao,
    required this.preco,
    required this.imagemUrl,
  });
}

List<Produto> mockProdutos = [
  Produto(
    id: 1,
    nome: "Tomate",
    descricao: "Este é o primeiro produto de minha lista",
    preco: 6.79,
    imagemUrl:
        "https://th.bing.com/th/id/OIP.dQ266CDyEC1f3C8yD3-QQQHaE7?pid=ImgDet&rs=1",
  ),
  Produto(
    id: 2,
    nome: "Chuchu",
    descricao: "Este é o segundo produto de minha lista",
    preco: 5.60,
    imagemUrl:
        "https://th.bing.com/th/id/OIP.l_trmQSAEDNqSZ_tM509cQHaFj?pid=ImgDet&rs=1",
  ),
  Produto(
    id: 3,
    nome: "Maçã",
    descricao: "Este é o terceiro produto de minha lista",
    preco: 2.50,
    imagemUrl:
        "https://th.bing.com/th/id/OIP.EWF0uPXKAM1iy8aohIkigAHaGr?pid=ImgDet&rs=1",
  ),
];
