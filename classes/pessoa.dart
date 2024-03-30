class Pessoa {
  final String nome;
  final String cpf;
  final DateTime dataDeNascimento;

  // Construtor
  Pessoa(this.nome, this.cpf, this.dataDeNascimento); 

  int? idade;
  // criacao metodo falar carlabudne

  void falar(String fala){
    print("$nome diz: $fala ");
  }
}