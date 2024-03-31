import 'produto.dart';

class ProdutoImpl extends Produto {
  int qtdVendida = 0;

  ProdutoImpl(
      {required super.nome, required super.valor, required super.qtdEstoque});

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
