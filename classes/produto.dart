class Produto {
  final String nome;
  late double valor;
  late int qtdEstoque;
  int qtdVendida = 0;

  Produto({required this.nome, required this.valor, required this.qtdEstoque});

  @override
  void realizarVenda() {
    if (qtdEstoque <= 0) {
      print('No momento não possuímos o produto $nome em estoque.');
    } else {
      qtdEstoque -= 1;
      qtdVendida += 1;
      print('Compra de $qtdVendida $nome realizada com sucesso!');
    }
  }

  @override
  double verReceitaGerada() {
    return qtdVendida * valor;
  }
}
