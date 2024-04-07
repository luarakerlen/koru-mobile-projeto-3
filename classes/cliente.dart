import 'pessoa.dart';
import 'produto.dart';
import '../enums.dart';

class Cliente extends Pessoa {
double? dinheiro;
List<Produto> produtosComprados = [];

Cliente.optional(super.nome, super.cpf, super.dataDeNascimento, super.genero, {this.dinheiro = ""});

}
