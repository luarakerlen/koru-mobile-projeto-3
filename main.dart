import 'classes/pessoa.dart';
import 'classes/produto.dart';
import 'classes/revendedor.dart';
import 'enums/enums.dart';

main() {
  /* Declaração de objetos Produto */
  Produto produto = Produto(nome: 'Colônia Floratta Flores Secretas 75ml', valor: 133.33, qtdEstoque: 0);

  produto.realizarVenda();
  produto.realizarVenda();
  produto.realizarVenda();
  produto.realizarVenda();
  produto.realizarVenda();
  produto.realizarVenda();
  produto.realizarVenda();
  produto.realizarVenda();
  produto.realizarVenda();
  produto.realizarVenda();
  print('Informações do Produto:');
  print('Total de itens comprados: ${produto.qtdVendida}');
  print('-------------------------------------------------------------------');
  print('Valor do produto: ${produto.valor} | Valor total da compra: ${produto.verReceitaGerada().toStringAsFixed(2)}');
  print('Receita gerada com o produto: ${produto.verReceitaGerada().toStringAsFixed(2)}');
  print('Produto em estoque: ${produto.qtdEstoque}');
  print('-------------------------------------------------------------------');

  /* Declaração de objetos Pessoa */
  Pessoa pessoa = Pessoa(nome: 'Glória Maria', cpf: '01234567891', dataNascimento: DateTime(1990,01,01), genero: Genero.feminino);
  pessoa.falar(pessoa.nome);
  pessoa.maiorIdade();
  print(pessoa.genero);
  print('-------------------------------------------------------------------');
  Pessoa pessoa2 = Pessoa(nome: 'Aninha', cpf: '01234567892', dataNascimento: DateTime(2010,01,01), genero: Genero.outro);
  pessoa2.falar(pessoa2.nome);
  pessoa2.maiorIdade();


  Revendedor revendedor = Revendedor(nome: "revendedor 1", cpf: "064646464", dataNascimento: DateTime(2000,12,02), genero: Genero.outro, matricula: "123456");
}


