import 'classes/produtoImpl.dart';

main() {
  /* Declaração de objetos Produto */
  ProdutoImpl produto = ProdutoImpl(nome: 'Colônia Floratta Flores Secretas 75ml', valor: 104.90, qtdEstoque: 5);
  produto.realizarVenda();
  produto.realizarVenda();
  print('Informações do Produto:');
  print('Total de itens comprados: ${produto.qtdVendida}');
  print('-------------------------------------------------------------------');
  print('Valor do produto: ${produto.valor} | Valor total da compra: ${produto.verReceitaGerada()}');
  print('Receita gerada com o produto: ${produto.verReceitaGerada()}');
  print('Produto em estoque: ${produto.qtdEstoque}');
  print('-------------------------------------------------------------------');
}


