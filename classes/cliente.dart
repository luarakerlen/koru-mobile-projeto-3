import 'pessoa.dart';

class Cliente extends Pessoa{
  double dinheiro;

  Cliente({required super.nome, required super.cpf, required super.dataDeNascimento, this.dinheiro = 0.0});

  void adicionarDinheiro(double? valor) {
    if (valor != null) {
      dinheiro += valor;
      print("$nome adicionou $valor à sua carteira. Agora você tem $dinheiro em dinheiro.");
    } else {
      print("Nenhum valor adicionado à carteira");
    }
  }
}
