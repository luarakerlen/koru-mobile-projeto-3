import 'classes/pessoa.dart';
import 'classes/produto.dart';
import 'classes/revendedor.dart';
import 'classes/cliente.dart';
import 'utils.dart';
import 'enums.dart';

main() {

  /* Declaração de objetos Produto */
  Produto produto1 = Produto("Desodorante Antitranspirante Aerossol Club 6 125ml", 23.33, 5);
  Produto produto2 = Produto("Shampoo Siàge Remove A Oleosidade 250ml", 42.99, 3);
  Produto produto3 = Produto("Condicionador Instance Frutas Vermelhas 300 ml", 23.99, 0);
  Produto produto4 = Produto("Sérum Facial Multiprotetor FPS 50 12 em 1 Niina Secrets Skin 30ml", 109.99, 3);
  Produto produto5 = Produto("Pó Compacto Adapt Glam Skin Protect 10g", 49.99, 1);
  Produto produto6 = Produto("Malbec Ultra Bleu Desodorante Colônia 100ml", 179.90 , 6);
  Produto produto7 = Produto("Egeo Beat Desodorante Colônia 90ml", 119.80 , 4);
  Produto produto8 = Produto("Arbo Desodorante Colônia 100ml", 164.90 , 7);

  /* Testes da classe Produto */  
    produto1.realizarVenda();
    pularLinha();
    produto2.realizarVenda();

  // Teste o método verReceitaGerada algumas vezes...
    print(produto3.verReceitaGerada());
    print(produto7.verReceitaGerada());
    print(produto8.verReceitaGerada());
    pularLinha();

  /* Declaração de objetos Pessoa */
  Pessoa pessoaB = Pessoa(
    "Joaquina",
    "95663323585",
    DateTime.parse("2006-03-27"),
    Genero.Feminino); // já fez aniversário este ano -> maior de idade

  Pessoa pessoaC = Pessoa(
    "Antonio", "95663323585",
    DateTime.parse("2006-08-03"),
    Genero.Masculino); // não fez aniversário este ano -> menor de idade 

  Pessoa pessoaA = Pessoa(
    "Carla",
    "12345678900",
    DateTime.parse("1987-05-15"),
    Genero.Outro);

  /* Testes da classe Pessoa */
  // Teste o método falar algumas vezes...  
   pessoaA.falar("oi tudo bem");
   pularLinha();

  // Teste o método maioridade algumas vezes...
    pessoaA.maioridade();
    pessoaB.maioridade();
    pessoaC.maioridade();

  /* Declaração de objetos Revendedor */
   Revendedor revendedorA = Revendedor(
    "Luara Kerlen", 
    "22233344455",
    DateTime.parse("1999-06-19"),
    Genero.Feminino,
    "0007"
  );
  
   Revendedor revendedorB = Revendedor(
    "Flavia Lopes",
    "11133344422", 
    DateTime.parse("2000-03-09"), 
    Genero.Outro, 
    "1000"
  );
   Revendedor revendedorC = Revendedor(
    "Guilherme Bastos", 
    "66677788899", 
    DateTime.parse("2001-08-23"), 
    Genero.Masculino, 
    "0807"
  );
   Revendedor revendedorD = Revendedor(
    "Gabriel Mattano", 
    "55544433322", 
    DateTime.parse("1995-06-17"), 
    Genero.Masculino, 
    "3333"
  );
  
  /* Testes da classe Revendedor */
  // Teste o método falar algumas vezes...  
   revendedorA.falar("Temos promoções");
   revendedorB.falar("Temos promoções");
   revendedorC.falar("Temos promoções");
   revendedorD.falar("Temos promoções");
   pularLinha();

  // Teste o método vender produtos algumas vezes...
   revendedorB.venderProduto(produto5);
   revendedorB.venderProduto(produto5);
   pularLinha();
   print("A lista de ${revendedorB.nome} é: ");
   revendedorB.produtosVendidos.forEach((element) {
      print(element.nome);
   });
   pularLinha();

    //Adicionar Clientes
    Cliente cliente1 = Cliente("Gabriel", "123458900", DateTime.parse("2000-02-01"), Genero.Masculino);
    Cliente cliente2 = Cliente("Flavia", "26430596312", DateTime.parse("1994-02-01"), Genero.Feminino);
    Cliente cliente3 = Cliente("Guilherme M.", "59762158964", DateTime.parse("1998-02-01"), Genero.Outro);
    Cliente cliente4 = Cliente("Guilherme", "45889632012", DateTime.parse("1996-02-01"), Genero.Masculino);

    //Teste do método Adicionar Dinheiro
    cliente1.adicionarDinheiro(37.50);
    cliente2.adicionarDinheiro(50.00);
    pularLinha();

    //Teste do método falar() de cliente.dart:
    cliente4.falar("Quero comprar um produto.");
    pularLinha();

    //Teste do método comprarProduto():
    cliente3.comprarProduto(produto6, revendedorB);
    cliente3.adicionarDinheiro(200);
    pularLinha();

    cliente3.comprarProduto(produto6, revendedorB);
    pularLinha();

    print("A lista de produtos comprados de ${cliente3.nome} é: ");
    cliente3.produtosComprados.forEach((element) {
    print(element.nome);});
    pularLinha();

    cliente3.adicionarDinheiro(200);
    cliente3.comprarProduto(produto4, revendedorA);
    pularLinha();

    print("A lista de produtos comprados de ${cliente3.nome} é: ");
    cliente3.produtosComprados.forEach((element) {
      print(element.nome);
    });
    
    pularLinha();
    print("A lista de produtos vendidos de ${revendedorB.nome} é: ");
    revendedorB.produtosVendidos.forEach((element) {
      print(element.nome);
   });

    pularLinha();
    print("A lista de produtos vendidos de ${revendedorA.nome} é: ");
    revendedorA.produtosVendidos.forEach((element) {
      print(element.nome);
   });

pularLinha();
//Teste do método ordenarProdutosComprados [callback],  e verProdutosComprados :
   print("*//"*30);
  cliente3.verProdutosComprados();
  print("*//"*30);
// fim do teste

}