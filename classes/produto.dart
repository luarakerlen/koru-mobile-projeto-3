class Produto {
  final String nomeProduto;
  double valor;
  int qtdEmEstoque;
  int qtdVendida;

  Produto({
    required this.nomeProduto,
    required this.valor,
    required this.qtdEmEstoque,
  }) : qtdVendida = 0;

  @override
  String toString() {
    return '$nomeProduto, $valor, $qtdEmEstoque, $qtdVendida';
  }
}

final produto1 = Produto(
  nomeProduto: 'Kit Presente Coleção Mini Perfumaria (4 itens)',
  valor: 111.80,
  qtdEmEstoque: 12,
);

final produto2 = Produto(
  nomeProduto: 'LILY EAU DE PARFUM 50ml',
  valor: 294.90,
  qtdEmEstoque: 35,
);

final produto3 = Produto(
  nomeProduto: 'ELISÉ EAU DE PARFUM 50 ML',
  valor: 294.80,
  qtdEmEstoque: 35,
);

final produto4 = Produto(
  nomeProduto: "FLORATTA My Blue Desodorante Colônia 75m",
  valor: 129.90,
  qtdEmEstoque: 50,
);

final produto5 = Produto(
  nomeProduto: 'Malbec Ultra Bleu Desodorante Colônia 100ml',
  valor: 179.90,
  qtdEmEstoque: 80,
);

final produto6 = Produto(
  nomeProduto:
      'Botica 214 Verano en Firenze Eau de Parfum Fougère Aromático 90ml',
  valor: 164.90,
  qtdEmEstoque: 35,
);

final produto7 = Produto(
  nomeProduto: 'Egeo Bomb Black Desodorante Colônia 90ml',
  valor: 199.80,
  qtdEmEstoque: 20,
);

final produto8 = Produto(
  nomeProduto: 'Shampoo Match Ciências das Curvas 300ml',
  valor: 41.90,
  qtdEmEstoque: 12,
);

final produto9 = Produto(
  nomeProduto: 'Sérum Facial de Alta Potência Botik Retinol Puro 30ml',
  valor: 204.90,
  qtdEmEstoque: 35,
);

final produto10 = Produto(
  nomeProduto: 'LINHA PET Limpa e Hidrata Patinhas Au.Migos Pets 120ml',
  valor: 35.90,
  qtdEmEstoque: 50,
);
