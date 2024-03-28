class Produto {
  void realizarVenda() {
    if (qtdEmEstoque < 0) {
      throw ArgumentError('Quantidade inválida.');
    } else if (qtdEmEstoque == 0) {
      print('No momento não possuímos o produto $nome em estoque.');
    } else {
      qtdEmEstoque -= 1;
      qtdVendida += 1;

      print('Compra de um(a) produto $nome realizada com sucesso!');
      print('Quantidade em estoque: $qtdEmEstoque');
    }
  }
}
