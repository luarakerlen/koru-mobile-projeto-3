class Produto {
  void realizarVenda() {
    if (_qtdEmEstoque < 0) {
      throw ArgumentError('Quantidade inválida.');
    } else if (_qtdEmEstoque == 0) {
      print('No momento não possuímos o produto $nome em estoque.');
    } else {
      _qtdEmEstoque -= 1;
      _qtdVendida += 1;

      print('Compra de um(a) produto $nome realizada com sucesso!');
      print('Quantidade em estoque: $_qtdEmEstoque');
    }
  }
}
