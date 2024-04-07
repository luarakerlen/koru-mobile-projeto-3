import 'enums.dart';
import 'pessoa.dart';

class Cliente extends Pessoa {
  //método falar
  @override
  void falar(String fala) {
    print("Cliente $nome diz: $fala");
  }

  //metodo comprarProduto (retorno: void)
  void comprarProduto(Produto produto, Revendedor revendedor) {
    if (dinheiro >= produto.valor) {
      revendedor.venderProduto(produto);
      dinheiro -= produto.valor;
      produtosComprados.add(produto);
    } else {
      print(
          '$nome não possui dinheiro suficiente para comprar o produto ${produto.nome}');
    }
  }
}
