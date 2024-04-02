import 'pessoa.dart';
import 'produto.dart';

class Revendedor extends Pessoa {
  //método venderProduto
  void venderProduto(Produto produto) {
    produto.realizarVenda();
    produtosVendidos.add(produto);
  }
}
