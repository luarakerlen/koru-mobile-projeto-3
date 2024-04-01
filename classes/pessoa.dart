class Pessoa {
  final String nome;
  int? idade;
  final String cpf;
  final DateTime dataDeNascimento;

  Pessoa({
    required this.nome,
    required this.dataDeNascimento,
    required this.cpf,
  });

  void maiorIdade() {
    final idade = calcularIdade();

    if (idade >= 18) {
      print('$nome tem $idade anos, portanto é maior de idade.');
    } else {
      print('$nome tem $idade anos, portanto é menor de idade.');
    }

    void falar(String mensagem) {
      print("$nome diz: $mensagem");
    }
  }
  int calcularIdade() {
    final DateTime dataAtual = DateTime.now();
    int idade = dataAtual.year - dataDeNascimento.year;
    if (dataAtual.month < dataDeNascimento.month ||
      (dataAtual.month == dataDeNascimento.month &&
      dataAtual.day < dataDeNascimento.day)) {
      idade--;
  }
    return idade;
}  
}
