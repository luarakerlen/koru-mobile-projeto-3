import 'pessoa.dart';
import 'produto.dart';

class Revendedor extends Pessoa {
  final String matricula;
  List<Produto> produtosVendidos = [];
  double porcentagemLucro = 0.3;

  Revendedor({
    required this.matricula, 
    required super.nome, 
    required super.cpf, 
    required super.dataDeNascimento
  }) {
    // TODO: implement Revendedor
    throw UnimplementedError();
  }

  @override
  void fala(String fala) {
    return;
  }

  void venderProduto(Produto produto) {
    produto.realizarVenda();
    this.produtosVendidos.add(produto);
  }  
}
