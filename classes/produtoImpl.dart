import 'produto.dart';

class ProdutoImpl implements Produto {

  final String nome;
  final double valor;
  int qtdEstoque;
  int qtdVendida = 0;

  ProdutoImpl(
      {required this.nome, required this.valor, required this.qtdEstoque});

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