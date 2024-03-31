abstract class Produto {
  final String nome;
  double valor;
  int qtdEstoque;

  Produto({required this.nome, required this.valor, required this.qtdEstoque});

  void realizarVenda();

  double verReceitaGerada();
}
