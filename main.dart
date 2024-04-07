import 'classes/cliente.dart';
import 'classes/pessoa.dart';
import 'classes/produto.dart';
import 'classes/revendedor.dart';
import 'enums/enums.dart';

main() {
  /* Declaração de objetos Produto */

  print('-------------------------------------------------------------------');

  /* Declaração de objetos Pessoa */
  // String texto = 'Temos promoções';
  // Pessoa pessoa = Pessoa(nome: 'Glória Maria', cpf: '01234567891', dataNascimento: DateTime(1990,01,01), genero: Genero.feminino);
  // pessoa.falar(texto);
  // pessoa.maiorIdade();
  // print(pessoa.genero);
  // print('-------------------------------------------------------------------');
  // Pessoa pessoa2 = Pessoa(nome: 'Aninha', cpf: '01234567892', dataNascimento: DateTime(2010,01,01), genero: Genero.outro);
  // pessoa2.falar(texto);
  // pessoa2.maiorIdade();
  // print('-------------------------------------------------------------------');
  // Revendedor revendedor = Revendedor(nome: "Cris", cpf: "064646464", dataNascimento: DateTime(2000,12,02), genero: Genero.outro, matricula: "123456");
  // revendedor.falar(texto);
  // print('-------------------------------------------------------------------');
  // Revendedor revendedor2 = Revendedor(nome: "Aninha", cpf: "064646464", dataNascimento: DateTime(2000,12,02), genero: Genero.feminino, matricula: "123456");
  // revendedor2.falar(texto);
  // print('-------------------------------------------------------------------');

  Revendedor revendedor3 = Revendedor(nome: "Jorge", cpf: "064646464", dataNascimento: DateTime(2000,12,02), genero: Genero.masculino, matricula: "123456");

  // Criando um cliente
  Cliente cliente = Cliente(
    nome: 'Gessony',
    cpf: '1111',
    dataNascimento: DateTime(2000, 12, 02),
    genero: Genero.masculino,
    dinheiro: 70.0,
  );

  Produto produto = Produto(nome: 'Colônia Floratta Flores Secretas 75ml', valor: 133.33, qtdEstoque:4);

  String textoRevendedor = 'Olá como vai';
  String textoCliente = 'Quero comprar um produto';
  print('-------------------------------------');
  revendedor3.falar(textoRevendedor);
  cliente.falar(textoCliente);
  print('-------------------------------------');

  //Add dinheiro
  cliente.adicionarDinheiro(200.0);
 print('-------------------------------------');

 //compra produto
 cliente.comprarProduto(produto, revendedor3);
 revendedor3.venderProduto(produto);
  print(' Saldo final cliente: ${cliente.dinheiro}');
  print('${produto.valor}');

  // print('-------------------------------------------------------------------');
  //
  // print('Informações do Produto:');
  // print('Total de itens comprados: ${produto.qtdVendida}');
  // print('Total de itens vendidos: ${produto.qtdVendida}');
  // print('-------------------------------------------------------------------');
  // print('Valor do produto: ${produto.valor} | Valor total da compra: ${produto.verReceitaGerada().toStringAsFixed(2)}');
  // print('Receita gerada com o produto: ${produto.verReceitaGerada().toStringAsFixed(2)}');
  // print('Produto em estoque: ${produto.qtdEstoque}');
}


