class Produto {
  final String nomeProduto;
  double valor;
  int qtdEmEstoque;
  int qtdVendida;

  Produto({
    required this.nomeProduto,
    required this.valor,
    required this.qtdEmEstoque,
  }) : qtdVendida = 0;

  @override
  String toString() {
    return '$nomeProduto, $valor, $qtdEmEstoque, $qtdVendida';
  }

  void realizarVenda() {
    if (qtdEmEstoque > 0) {
      qtdVendida++;
      qtdEmEstoque--;
      print('Compra do produto $nomeProduto realizada com sucesso!');
    } 
    else {
      print('Desculpe! No momento não possuímos o produto $nomeProduto em estoque.');
    }
  }
}
