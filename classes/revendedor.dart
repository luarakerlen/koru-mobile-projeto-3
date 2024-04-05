import 'pessoa.dart';
import 'produto.dart';
import 'enums.dart';

class Revendedor extends Pessoa {
  final String matricula;
  List<Produto> produtosVendidos = [];
  double porcentagemLucro = 0.3;

  Revendedor({
    required this.matricula, 
    required String nome, 
    required String cpf, 
    required DateTime dataDeNascimento,
    required Genero genero
  }) : super(nome: nome, cpf: cpf, dataDeNascimento: dataDeNascimento, genero: genero);

  @override
  void fala(String fala) {
    return;
  }

  void venderProduto(Produto produto) {
    produto.realizarVenda();
    this.produtosVendidos.add(produto);
  }  
}