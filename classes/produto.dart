class Produto {
  final String nome;
  double valor;
  int qtdEmEstoque;
  int qtdVendida = 4;

  Produto(this.nome, this.valor, this.qtdEmEstoque);

<<<<<<< HEAD
  verReceitaGerada(){
    return valor * qtdVendida;
  }

=======
//Criação do método realizarVenda - gabrielmattano

void realizarVenda(){
 if (qtdEmEstoque > 0) {
  qtdVendida ++;
  qtdEmEstoque --;

  print("Compra de um(a) produto $nome realizada com sucesso!");
 } else {
  print("No momento não possuímos o produto $nome em estoque.");
 };
}
>>>>>>> 95faa05c5e9c89f7731f3c9909309f9b977ae055
}