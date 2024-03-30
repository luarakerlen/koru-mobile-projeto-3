class Produto {
  final String nome;
  double valor;
  int qtdEmEstoque;
  int qtdVendida = 4;

  Produto(this.nome, this.valor, this.qtdEmEstoque);

  verReceitaGerada(){
    return valor * qtdVendida;
  }

}