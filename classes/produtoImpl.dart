import 'produto.dart';

class ProdutoImpl implements Produto {

  late final String nome;
  late final double valor;
  late int qtdEstoque;
  int qtdVendida = 0;

@override
  void realizarVenda() {
   if (qtdEstoque <= 0) {
      print('No momento não possuímos o produto $nome em estoque.');
    } else {
      qtdEstoque -= 1;
      qtdVendida += 1;

      print('Compra de $qtdVendida $nome realizada com sucesso!');
      print('Quantidade em estoque: $qtdEstoque');
    }
  }

  @override
  double verReceitaGerada() {
    return qtdVendida * valor;
  }
}