class Produto {
  final String nome;
  double valor;
  int qtdEmEstoque = 0;
  int qtdVendida = 0;

  //construtor
  Produto({required this.nome, required this.valor, required this.qtdEmEstoque}){

  }

  void realizarVenda() {
    if (qtdEmEstoque > 0) {
      qtdVendida++;
      qtdEmEstoque--;
      print("Compra de um(a) produto $nome realizada com sucesso!");
    } else {
      print("No momento não possuímos o produto $nome em estoque.");
    }
  }
}
