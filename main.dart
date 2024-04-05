// Importações dos arquivos que serão utilizados

import 'classes/enums.dart';
import 'classes/pessoa.dart';
import 'classes/produto.dart';
import 'utils.dart';

/**
 * RECOMENDAÇÕES DA TUTORA
 * 
 * Arquivo de testes e execução do sistema criado.
 * Os testes para o sistema se darão todos através de prints no console.
 * 
 * Abaixo você encontrará o método main, que é o método principal que será executado.
 * 
 * Para executar esse arquivo, digite o seguinte comando no terminal: dart run main.dart
 * Outra alternativa é instalar a extensão Dart no seu VS Code.
 * Isso fará aparecer um botão tipo "play" no canto direito superior. Basta clicar para executar o projeto.
 * 
 * Dentro do método main, vocês encontrarão indicações para criar objetos das classes criadas e executar os métodos criados.
 * Recomenda-se que essas declarações e execuções sejam feitas a medida que vocês forem criando as classes e métodos pedidos,
 * pois isso servirá para testar se o que você fez está funcionando.
 * 
 * Não se prendam apenas aos comentários e recomendações. Façam todos os testes que quiserem fazer.
 * 
 * Existe um método "pularLinha" que foi criado dentro do arquivo utils.
 * Caso queiram, utilizem-no para pular linha entre um bloco de testes e outro,
 * apenas por questões de organização e melhor visualização das saídas.
 * Para executá-lo, basta chamá-lo em qualquer ponto do método main, dessa maneira:
 * pularLinha();
 */

main() {
  /* Declaração de objetos Produto */
  // pularLinha();
  // Declare aqui alguns objetos do tipo Produto...
  // Exemplo: Produto produtoA = Produto("Colônia Floratta Flores Secretas 75ml", 104.90, 3);
  Produto parfumLily = Produto("parfumLily", 291.51, 2);
  /* Testes da classe Produto */
  Produto bleu = Produto("Ultra Bleu Desodorante Colônia 100ml", 179.90, 1);
  pularLinha();
  Produto verano =
      Produto("Verano en Firenze Eau de Parfum Floral Frutal75 ml", 164.00, 3);
  // Teste o método realizarVenda algumas vezes...
  // Exemplo: produtoA.realizarVenda();
  // Saída esperada 1: Compra de um produto Colônia Floratta Flores Secretas 75ml realizada com sucesso!
  // Saída esperada 2: No momento não possuímos o produto Colônia Floratta Flores Secretas 75ml em estoque.
  parfumLily.realizarVenda();
  pularLinha();
  bleu.realizarVenda();
  bleu.realizarVenda();
  pularLinha();
  verano.realizarVenda();
  verano.realizarVenda();
  // Teste o método verReceitaGerada algumas vezes...
  // Exemplo: print(produtoA.verReceitaGerada());
  print(
      "Produto ${parfumLily.nome} gerou receita de: ${parfumLily.verReceitaGerada().toStringAsFixed(2)}");
  pularLinha();
  print(
      "Produto ${bleu.nome} gerou receita de: ${bleu.verReceitaGerada().toStringAsFixed(2)}");

  pularLinha();
  print(
      "Produto ${verano.nome} gerou receita de: ${verano.verReceitaGerada().toStringAsFixed(2)}");

  /* ------------------------------------------ */

  /* Declaração de objetos Pessoa */

  // Declare aqui alguns objetos do tipo Pessoa...
  // Exemplo: Pessoa pessoaA = Pessoa('Maria', '12345678900', 1994);
  Pessoa pessoa1 =
      Pessoa("maria", "452464545452", DateTime.parse("1980-04-12"),Genero.feminino);

  Pessoa pessoa2 = Pessoa("jose", "121212121212", DateTime.parse("2012-12-12"),Genero.masculino);
  /* Testes da classe Pessoa */

  // Teste o método falar algumas vezes...
  // Exemplo: pessoaA.falar('Oi, tudo bem?');
  // Saída esperada: Maria diz: Oi, tudo bem?
  pessoa1.falar("oi,tudo bem, qual shampoo recomenda para meus cabelos?");
  pularLinha();
  pessoa2.falar("Olá tudo bem? Tem o perfume Gold Desodorante Colônia");
  // Teste o método maioridade algumas vezes...
  // Exemplo: pessoaA.maioridade();
  // Saída esperada 1: Maria tem 30 anos, portanto é maior de idade.
  // Saída esperada 2: João tem 14 anos, portanto é menor de idade.
  pessoa1.maioridade();
  pularLinha();
  pessoa2.maioridade();
  /* ------------------------------------------ */
}
