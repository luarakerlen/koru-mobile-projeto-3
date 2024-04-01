class Pessoa {
  final String nome;
  final String cpf;
  final DateTime dataDeNascimento;

  // Construtor
  Pessoa(this.nome, this.cpf, this.dataDeNascimento) {
    _idade = calcularIdade();
  }

  late int _idade; //fix: troca de int? indade por late int idade -gabrielmattano

  int calcularIdade() {
    if (DateTime.now().month < dataDeNascimento.month ||
        (DateTime.now().month == dataDeNascimento.month &&
            DateTime.now().day < dataDeNascimento.day)) {
      _idade = DateTime.now().year - (dataDeNascimento.year + 1);
      return _idade;
    }
    _idade = DateTime.now().year - dataDeNascimento.year;
    return _idade;
  }

  // criacao metodo falar carlabudne
  void falar(String fala){
    print("$nome diz: $fala ");
  }

  //Criação do Método Maioridade
  void maioridade (){
    if (_idade >= 18){
      print("$nome tem $_idade anos, portanto é maior de idade");
      } else{
          print("$nome tem $_idade anos, portanto é menor de idade");
    }   
  }
}
