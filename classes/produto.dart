class Produto {
  final String nome;
  final double valor;
  int qtdEmEstoque;
  int qtdVendida = 0;

  Produto(this.nome, this.valor, this.qtdEmEstoque);

  void realizarVenda() {
    if (qtdEmEstoque > 0) {
      qtdVendida++;
      qtdEmEstoque--;
      print('Compra de um produto $nome realizada com sucesso!');
    } else {
      print('No momento não possuimos o produto $nome em estoque.');
    }
  }

  double verReceitaGerada() {
    return this.valor * this.qtdVendida;
  }
}
