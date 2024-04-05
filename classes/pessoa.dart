import 'enums.dart';

class Pessoa {
  final String nome;
  final String cpf;
  final DateTime dataDeNascimento;
  final Genero genero;
  late int idade;

  //construtor
  Pessoa(
      {required this.nome, required this.cpf, required this.dataDeNascimento, required this.genero,}) {
    idade = calcularIdade();
  }
  //inserir metodo calcularIdade (retorno: int)
  int calcularIdade() {
    return DateTime.now().difference(dataDeNascimento).inDays ~/ 365.toInt();
  }

  void verificarMaioridade() {
    String verificar = (idade >= 18
        ? ("$nome tem $idade, portanto é maior de idade!")
        : ("$nome tem $idade, portanto é menor de idade!"));
    print(verificar);
  }

  //método falar
  void falar(String fala) {
    print('$nome diz: $fala');
  }
}
