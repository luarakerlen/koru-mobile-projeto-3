class Pessoa {
  final String nome;
  final String cpf;
  final DateTime dataDeNascimento;

  // Construtor
  Pessoa(this.nome, this.cpf, this.dataDeNascimento) {
    idade = calcularIdade();
  }

  int? idade;

  int calcularIdade() {
    if (DateTime.now().month < dataDeNascimento.month ||
        (DateTime.now().month == dataDeNascimento.month &&
            DateTime.now().day < dataDeNascimento.day)) {
      idade = DateTime.now().year - (dataDeNascimento.year + 1);
      return idade!;
    }
    idade = DateTime.now().year - dataDeNascimento.year;
    return idade!;
  }


  // criacao metodo falar carlabudne
  void falar(String fala){
    print("$nome diz: $fala ");
  }

}