import 'pessoa.dart';
import 'produto.dart';
import 'enums.dart';

class Revendedor extends Pessoa {
  List<Produto> produtosVendidos = <Produto>[];

  //método falar
  @override
  void falar(String fala) {
    switch (genero) {
      case Genero.Feminino:
        print("Revendedora $nome diz: $fala ");
        break;
      case Genero.Masculino:
        print("Revendedor $nome diz: $fala");
        break;
      default:
        print("Pessoa revendedora $nome diz: $fala");
    }
  }

  //método venderProduto
  void venderProduto(Produto produto) {
    produto.realizarVenda();
    produtosVendidos.add(produto);
  }
}
