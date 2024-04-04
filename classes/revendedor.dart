import 'pessoa.dart';

class Revendedor extends Pessoa {
  final String matricula;

  Revendedor(
      {required super.nome,
      required super.cpf,
      required super.dataDeNascimento,
      required this.matricula});
}
