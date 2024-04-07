import 'pessoa.dart';

class Cliente extends Pessoa {
  late double? dinheiro;

  Cliente(super.nome, super.cpf, super.dataDeNascimento, {this.dinheiro});

  void adicionarDinheiro(double valor) {
    this.dinheiro = (this.dinheiro ?? 0) + valor;
  }

  void falar(String fala) {
    print("Cliente $nome diz: $fala");
  }
}
