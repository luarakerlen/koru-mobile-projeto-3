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

  @override
  String toString() {
    return '$nome, $cpf, $idade';
  }
}

final pessoa1 = Pessoa(
  nome: 'Maria',
  cpf: '12345678900',
  dataDeNascimento: DateTime.parse('1994-01-06'),
);
final pessoa2 = Pessoa(
  nome: 'João',
  cpf: '98345678900',
  dataDeNascimento: DateTime.parse('1990-10-04'),
);
final pessoa3 = Pessoa(
  nome: 'Ana',
  cpf: '87654321900',
  dataDeNascimento: DateTime.parse('1998-07-15'),
);

final pessoa4 = Pessoa(
  nome: 'Pedro',
  cpf: '76543219800',
  dataDeNascimento: DateTime.parse('1985-03-22'),
);
final pessoa5 = Pessoa(
  nome: 'Carla',
  cpf: '65432198700',
  dataDeNascimento: DateTime.parse('1992-11-30'),
);
final pessoa6 = Pessoa(
  nome: 'Rafaela',
  cpf: '54321987600',
  dataDeNascimento: DateTime.parse('1980-09-10'),
);

final pessoa7 = Pessoa(
  nome: 'Leandro',
  cpf: '43219876500',
  dataDeNascimento: DateTime.parse('1976-05-25'),
);
final pessoa8 = Pessoa(
  nome: 'Fernanda',
  cpf: '32198765400',
  dataDeNascimento: DateTime.parse('1991-12-08'),
);
final pessoa9 = Pessoa(
  nome: 'Mariana',
  cpf: '21987654300',
  dataDeNascimento: DateTime.parse('1987-02-18'),
);

final pessoa10 = Pessoa(
  nome: 'Gabriel',
  cpf: '19876543200',
  dataDeNascimento: DateTime.parse('2000-08-03'),
);
