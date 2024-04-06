
import 'enums.dart';

class Pessoa {
  String nome;
  String cpf;
  DateTime dataDeNascimento;
  int idade = 0;
  Genero generos;

  Pessoa(this.nome, this.cpf, this.dataDeNascimento, this.generos) {
    _calcularIdade();
  }

  void falar(String fala) {
    print("${this.nome} diz: $fala");
  }

  int _calcularIdade() {
    DateTime hoje = DateTime.now();
    this.idade = hoje.year - this.dataDeNascimento.year;

    if (hoje.month < this.dataDeNascimento.month ||
        (hoje.month == this.dataDeNascimento.month &&
            hoje.day < this.dataDeNascimento.day)) this.idade--;

    return this.idade;
  }

  void maioridade() {
    if (this.idade >= 18) {
      print("${this.nome} tem ${this.idade}, portanto é maior de idade");
    } else {
      print("${this.nome} tem ${this.idade}, portanto é menor de idade");
    }
  }

  String GeneroString(Genero genero) {
  switch (genero) {
    case Genero.feminino:
      return 'Feminino';
    case Genero.masculino:
      return 'Masculino';
    case Genero.outro:
      return 'Outro';
    default:
      return 'Desconhecido';
  }
}
}
