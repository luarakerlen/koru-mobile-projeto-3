class Pessoa {
  //construtor
  Pessoa({required this.dataDeNascimento}) {
    idade = calcularIdade();
  }
  //inserir metodo calcularIdade (retorno: int)
  int calcularIdade() {
    return DateTime.now().difference(dataDeNascimento).inDays ~/ 365.toInt();
  }
}
