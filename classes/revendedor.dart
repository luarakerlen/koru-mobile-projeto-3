import 'pessoa.dart';

class Revendedor extends Pessoa {
  final String matricula;
  final double porcentagemLucro;
  Revendedor(
      {required super.nome,
      required super.cpf,
      required super.dataDeNascimento,
      required this.matricula,
      }) : porcentagemLucro = 0.2;
}
