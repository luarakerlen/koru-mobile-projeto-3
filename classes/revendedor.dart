import 'pessoa.dart';
import 'produto.dart';

class Revendedor extends Pessoa {
  
  List<Produto> produtosVendidos = <Produto>[];
  
  //método venderProduto
  void venderProduto(Produto produto) {
    produto.realizarVenda();
    produtosVendidos.add(produto);
  }
}