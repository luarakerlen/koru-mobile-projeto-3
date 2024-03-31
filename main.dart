// Importações dos arquivos que serão utilizados
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

  // Declare aqui alguns objetos do tipo Produto...
    // Exemplo: Produto produtoA = Produto("Colônia Floratta Flores Secretas 75ml", 104.90, 3);

  Produto produto1 = Produto("Desodorante Antitranspirante Aerossol Club 6 125ml", 23.33, 5);
  Produto produto2 = Produto("Shampoo Siàge Remove A Oleosidade 250ml", 42.99, 3);
  Produto produto3 = Produto("Condicionador Instance Frutas Vermelhas 300 ml", 23.99, 0);
  Produto produto4 = Produto("Sérum Facial Multiprotetor FPS 50 12 em 1 Niina Secrets Skin 30ml", 109.99, 3);
  Produto produto5 = Produto("Pó Compacto Adapt Glam Skin Protect 10g", 49.99, 1);
  Produto produto6 = Produto("Malbec Ultra Bleu Desodorante Colônia 100ml", 179.90 , 6);
  Produto produto7 = Produto("Egeo Beat Desodorante Colônia 90ml", 119.80 , 4);
  Produto produto8 = Produto("Arbo Desodorante Colônia 100ml", 164.90 , 7);

  /* Testes da classe Produto */

  // Teste o método realizarVenda algumas vezes...
    // Exemplo: produtoA.realizarVenda();
    // Saída esperada 1: Compra de um produto Colônia Floratta Flores Secretas 75ml realizada com sucesso!
    produto1.realizarVenda();
    pularLinha();
    produto3.realizarVenda();
    // Saída esperada 2: No momento não possuímos o produto Colônia Floratta Flores Secretas 75ml em estoque.

  // Teste o método verReceitaGerada algumas vezes...
    // Exemplo: print(produtoA.verReceitaGerada());
    print(produto6.verReceitaGerada());
    print(produto7.verReceitaGerada());
    print(produto8.verReceitaGerada());

  // pularLinha();

  /* ------------------------------------------ */

  /* Declaração de objetos Pessoa */

  // Declare aqui alguns objetos do tipo Pessoa...
    // Exemplo: Pessoa pessoaA = Pessoa('Maria', '12345678900', 1994);


  /* Testes da classe Pessoa */  
  Pessoa pessoaB = Pessoa("Joaquina", "95663323585", DateTime.parse("2006-03-27")); // já fez aniversário este ano -> maior de idade
  Pessoa pessoaC = Pessoa("Antonio", "95663323585", DateTime.parse("2006-08-03")); // não fez aniversário este ano -> menor de idade 
  Pessoa pessoaA = Pessoa("Carla", "12345678900", DateTime.parse("1987-05-15"));

  /* Testes da classe Pessoa */
  // Teste o método falar algumas vezes...
  
   pessoaA.falar("oi tudo bem");
    // Exemplo: pessoaA.falar('Oi, tudo bem?');
    // Saída esperada: Maria diz: Oi, tudo bem?
  
    pularLinha();

    // Teste o método maioridade algumas vezes...
    // Exemplo: pessoaA.maioridade();

    pessoaA.maioridade();
    pessoaB.maioridade();
    pessoaC.maioridade();

    // Saída esperada 1: Maria tem 30 anos, portanto é maior de idade.
    // Saída esperada 2: João tem 14 anos, portanto é menor de idade.

    pularLinha();
  

  /* ------------------------------------------ */
}
