import 'classes/pessoa.dart';
import 'classes/produto.dart';
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
    produto3.realizarVenda();

  // Teste o método verReceitaGerada algumas vezes...
    print(produto6.verReceitaGerada());
    print(produto7.verReceitaGerada());
    print(produto8.verReceitaGerada());
    pularLinha();

  /* Declaração de objetos Pessoa */

  Pessoa pessoaB = Pessoa("Joaquina", "95663323585", DateTime.parse("2006-03-27"), Genero.Feminino); // já fez aniversário este ano -> maior de idade
  Pessoa pessoaC = Pessoa("Antonio", "95663323585", DateTime.parse("2006-08-03"), Genero.Masculino); // não fez aniversário este ano -> menor de idade 
  Pessoa pessoaA = Pessoa("Carla", "12345678900", DateTime.parse("1987-05-15"), Genero.Outro);

  /* Testes da classe Pessoa */
  // Teste o método falar algumas vezes...
  
   pessoaA.falar("oi tudo bem");
   pularLinha();

    // Teste o método maioridade algumas vezes...

    pessoaA.maioridade();
    pessoaB.maioridade();
    pessoaC.maioridade();

    pularLinha();
}
