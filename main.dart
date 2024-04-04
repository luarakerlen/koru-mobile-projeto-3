import 'classes/pessoa.dart';
import 'classes/produto.dart';

main() {
  /* Declaração de objetos Produto */
  Produto produto = Produto(nome: 'Colônia Floratta Flores Secretas 75ml', valor: 133.33, qtdEstoque: 5);
  produto.realizarVenda();
  produto.realizarVenda();
  print('Informações do Produto:');
  print('Total de itens comprados: ${produto.qtdVendida}');
  print('-------------------------------------------------------------------');
  print('Valor do produto: ${produto.valor} | Valor total da compra: ${produto.verReceitaGerada()}');
  print('Receita gerada com o produto: ${produto.verReceitaGerada()}');
  print('Produto em estoque: ${produto.qtdEstoque}');
  print('-------------------------------------------------------------------');

  /* Declaração de objetos Pessoa */
  Pessoa pessoa = Pessoa(nome: 'Glória Maria', cpf: '01234567891', dataNascimento: DateTime(1990,01,01));
  pessoa.falar(pessoa.nome);
  pessoa.maiorIdade();
  print('-------------------------------------------------------------------');
  Pessoa pessoa2 = Pessoa(nome: 'Aninha', cpf: '01234567892', dataNascimento: DateTime(2010,01,01));
  pessoa2.falar(pessoa2.nome);
  pessoa2.maiorIdade();
}


