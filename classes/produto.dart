class Produto {
  final String nome;
  double valor;
  int qtdEmEstoque;
  int qtdVendida = 0;

  Produto({
    required this.nome,
    required this.valor,
    required this.qtdEmEstoque,
  });
}