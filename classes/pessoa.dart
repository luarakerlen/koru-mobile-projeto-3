class Pessoa {
  final String nome;
  final String cpf;
  final DateTime dataDeNascimento;
  final String Genero;
  late int idade;

  Pessoa(this.nome, this.cpf, this.dataDeNascimento , this.Genero) {
    idade = calcularIdade();
  }

  void falar(String fala) {
    print('$nome diz: $fala');
  }

  int calcularIdade() {
    DateTime agora = DateTime.now();
    int idade = agora.year - dataDeNascimento.year;
    if (agora.month < dataDeNascimento.month ||
        (agora.month == dataDeNascimento.month &&
            agora.day < dataDeNascimento.day)) {
      idade--;
    }
    return idade;
  }

  void maioridade() {
    if (idade >= 18) {
      print('$nome tem $idade anos, portanto é maior de idade.');
    } else {
      print('$nome tem $idade anos, portanto é menor de idade.');
    }
  }
}
