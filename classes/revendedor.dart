import 'pessoa.dart';

class Revendedor extends Pessoa {
  final String matricula;
  List produtosVendidos;
  double porcentagemLucro;

  Revendedor(super.nome, super.cpf, super.dataDeNascimento, super.genero,
      this.matricula, this.produtosVendidos, this.porcentagemLucro);

  @override
  void falar(String mensagem) {
    String pronome;
    switch (Genero) {
      case 'maculino':
        pronome = 'o';
        break;

      case 'feminino':
        pronome = 'a';
        break;
      default:
        pronome = 'a pessoa';
    }

    print('Revendedor $nome diz: $mensagem');
  }
}
