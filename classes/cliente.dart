import 'enums.dart';
import 'pessoa.dart';
import 'produto.dart';

class Cliente extends Pessoa {
  final double? dinheiro;
  List<Produto> produtosComprados = [];

  Cliente({
    required String nome,
    required DateTime dataDeNascimento,
    required String cpf,
    required Genero genero,
    this.dinheiro,
  }) : super(
          nome: nome,
          dataDeNascimento: dataDeNascimento,
          cpf: cpf,
          genero: genero,
        );

  @override
  void falar(String mensagem) {}

  void adicionarDinheiro() {}

  void comprarProduto() {}
}
