import 'pessoa.dart';
import 'produto.dart';

class Cliente extends Pessoa {
  final double? dinheiro;
  List<Produto> produtosComprados = [];

  Cliente({
    required String nome,
    required DateTime dataDeNascimento,
    required String cpf,
    this.dinheiro,
  }) : super(
          nome: nome,
          dataDeNascimento: dataDeNascimento,
          cpf: cpf,
        );
}
