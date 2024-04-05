import 'pessoa.dart';

class Cliente extends Pessoa{

  double dinheiro;

  Cliente(super.nome, super.cpf, super.dataDeNascimento, super.generos, [this.dinheiro=0.0]);

  void adicionarDinheiro( double valor){

    this.dinheiro += valor;
    print('Agora a pessoa ${super.nome} possui: ${this.dinheiro.toStringAsFixed(2)} reais.');
  }

}