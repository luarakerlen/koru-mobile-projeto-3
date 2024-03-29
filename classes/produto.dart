class Produto {
  
  String nome;
  double valor;
  int qtdVendida = 0;
  int qtdEmEstoque;

  Produto(this.nome, this.valor, this.qtdEmEstoque);

  void realizarVenda() {
    
    if (this.qtdEmEstoque > 0) {
      this.qtdVendida++;
      this.qtdEmEstoque--;
      
      print("Compra de um(a) produto ${this.nome} realizada com sucesso!");
    } else {
      print("No momento não possuímos o produto ${this.nome} em estoque");
    }
  }
 double verReceitaGerada(){
  return this.valor * this.qtdVendida;

 }



}
