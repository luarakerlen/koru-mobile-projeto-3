class Produto {
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
