import 'pessoa.dart';

class PessoaImpl extends Pessoa{

  PessoaImpl({required super.nome, required super.cpf, required super.dataNascimento,});

  
  @override
  int calcularIdade() {
    int idade = DateTime.now().year - dataNascimento.year;
    if (DateTime.now().month < dataNascimento.month ||
        (DateTime.now().month == dataNascimento.month &&
            DateTime.now().day < dataNascimento.day)) {
      idade--;
    }
    return idade;
  }

  @override
  void maiorIdade(){
    if (idade >= 18) {
      print('$nome tem $idade anos, portanto é maior de idade.');
    } else {
      print('$nome tem $idade anos, portanto é menor de idade.');
    }
  }

  @override
  void falar(String texto){

    print('${this.nome} diz: ${texto}');
  }

  
}