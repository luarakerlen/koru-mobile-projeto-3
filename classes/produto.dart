class produto {
  final String nome;
  double valor;
  int qtdEmEstoque;
  int qtdVendida = 0;

  produto({
    required this.nome,
    required this.valor,
    required this.qtdEmEstoque,
  });
}