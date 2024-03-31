abstract class Pessoa {
  final String nome;
  final String cpf;
  final DateTime dataNascimento;
  late final int idade;
  
  Pessoa({required this.nome, required this.cpf, required this.dataNascimento}){
    idade = calcularIdade();
  }

  void falar(String nome);

  int calcularIdade();

  void maiorIdade();

  

}