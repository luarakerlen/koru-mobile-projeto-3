class Pessoa {
  final String nome;
  final String cpf;
  final DateTime dataDeNascimento;
  late final int idade;

  Pessoa({
    required this.nome,
    required this.cpf,
    required this.dataDeNascimento,
  }) {
    idade = _calcularIdade();
  }

  int _calcularIdade() {
    final hoje = DateTime.now();
    final anos = hoje.year - dataDeNascimento.year;
    final meses = hoje.month - dataDeNascimento.month;
    final dias = hoje.day - dataDeNascimento.day;

    if (meses < 0 || (meses == 0 && dias < 0)) {
      return anos - 1;
    } else {
      return anos;
    }
  }

  void maioridade() {
    if (idade >= 18) {
      print('$nome tem $idade anos, portanto é maior de idade.');
    } else {
      print('$nome tem $idade anos, portanto é menor de idade.');
    }
  }

  void fala(String fala) {
    print('$nome diz: $fala');
  }

  @override
  String toString() {
    return '$nome, $cpf, $idade';
  }
}
