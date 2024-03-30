class Pessoa {
  final DateTime dataDeNascimento;
  late int idade;
  //construtor
  Pessoa({required this.dataDeNascimento}) {
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
}
