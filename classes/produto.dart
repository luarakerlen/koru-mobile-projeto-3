class Produto {
  final String nome;
  final double valor;
  int qtdEmEstoque;
  int qtdVendida = 0;

  Produto(
      {required this.nome, required this.valor, required this.qtdEmEstoque});

  void realizarVenda() {
    if (qtdEmEstoque > 0) {
      qtdVendida++;
      qtdEmEstoque--;
      print("Compra de um(a) produto $nome realizada com sucesso!");
    } else {
      print("No momento não possuímos o produto $nome em estoque.");
    }
  }

  double verReceitaGerada() {
    return valor * qtdVendida;
  }
}
