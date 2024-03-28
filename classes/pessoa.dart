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

  void falar(String mensagem) {
    print("$nome diz: $mensagem");
  }
}
