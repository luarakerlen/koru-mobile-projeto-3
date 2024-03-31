import 'dart:ffi';

class Pessoa {

  String nome;
  String cpf;
  DateTime dataDeNascimento;
  
  
  Pessoa(this.nome,this.cpf,this.dataDeNascimento);

  void falar(String fala){
    print("${this.nome} diz: $fala");
    
  }
  
  int calcularIdade(){

    DateTime hoje = DateTime.now();
    int anos = hoje.year - this.dataDeNascimento.year;
   
    if (hoje.month < this.dataDeNascimento.month ||
      (hoje.month == this.dataDeNascimento.month && hoje.day < this.dataDeNascimento.day)) 
    anos--;
  
    return anos;

  }

  void maioridade() {

    int idade = calcularIdade();
    if(idade>=18){
      print("${this.nome} tem $idade, portanto é maior de idade");
    }else{
      print("${this.nome} tem $idade, portanto é menor de idade");
    }

  }
}

