import 'classes/cliente.dart';
import 'classes/pessoa.dart';
import 'classes/produto.dart';
import 'classes/revendedor.dart';
import 'enums/enums.dart';
import 'utils.dart';

main() {
  /* Declaração de objetos Produto */
  Revendedor revendedor3 = Revendedor(nome: "Jorge",
      cpf: "064646464",
      dataNascimento: DateTime(2000, 12, 02),
      genero: Genero.masculino,
      matricula: "123456");

  // Criando um cliente
  Cliente cliente = Cliente(
    nome: 'Heitor',
    cpf: '1111',
    dataNascimento: DateTime(2000, 12, 02),
    genero: Genero.masculino,
    dinheiro: 100.0,
  );

  Produto produto = Produto(nome: 'Colônia Floratta Flores Secretas 75ml',
      valor: 133.33,
      qtdEstoque: 4);

  String textoRevendedor = 'Olá como vai';
  String textoCliente = 'Quero comprar um produto';
  pularLinha();
  revendedor3.falar(textoRevendedor);
  cliente.falar(textoCliente);

  //Add dinheiro
  print('Cliente tem o seguinte saldo ${cliente.dinheiro} antes do depósito');
  cliente.adicionarDinheiro(50.00);
  pularLinha();

  //aqui o cliente compra o produto e nele já tem um método que chama o revendedor.venderProduto
  cliente.comprarProduto(produto, revendedor3);

  print('Saldo final cliente: ${cliente.dinheiro.toStringAsFixed(2)}');

  print('estoque: ${produto.qtdEstoque}');
  print('vendido: ${produto.qtdVendida}');

  pularLinha();
  print('Informações do Produto:');
  print('Total de itens comprados: ${produto.qtdVendida}');
  print('Total de itens vendidos: ${produto.qtdVendida}');
  pularLinha();
  print('Receita gerada com o produto: ${produto.verReceitaGerada()
      .toStringAsFixed(2)}');
  print('Produto em estoque: ${produto.qtdEstoque}');
}


