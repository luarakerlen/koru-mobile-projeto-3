class Produto {
  int qtdEmEstoque = 0;
  late int qtdVendida;

  void realizarVenda() {
    if (qtdEmEstoque > 0) {
      qtdVendida++;
      qtdEmEstoque--;
      print("Compra de um(a) produto $nome realizada com sucesso!");
    } else {
      print("No momento não possuímos o produto $nome em estoque.");
    }
  }
}
