# Desafio Desenvolve Boticário - Dart - Módulo 3

Neste repositório, você encontrará um um projeto em Dart contendo as classes `Produto` e `Pessoa` referente ao módulo 03. Este desafio é uma atividade proposta durante o programa de Desenvolvimento Boticário 2024.

## Classes

### Produto

#### Atributos:

- `nome` (String): Nome do produto.
- `valor` (double): Preço do produto.
- `qtdEmEstoque` (int): Quantidade do produto em estoque.
- `qtdVendida` (int): Quantidade do produto já vendida.

#### Métodos:

- `realizarVenda()`: Realiza uma venda do produto.
- `verReceitaGerada()`: Calcula e retorna a receita gerada pelo produto.

### Pessoa

#### Atributos:

- `nome` (String): Nome da pessoa.
- `cpf` (String): CPF da pessoa.
- `dataDeNascimento` (DateTime): Data de nascimento da pessoa.
- `idade` (int): Idade da pessoa.

#### Métodos:

- `falar(String fala)`: Imprime uma fala da pessoa.
- `calcularIdade()`: Calcula a idade da pessoa com base na data atual.
- `maioridade()`: Verifica se a pessoa é maior de idade.

### Cliente

#### Atributos:
- `nome` (String): Nome do cliente.
- `cpf` (String): CPF do cliente.
- `dataDeNascimento` (DateTime): Data de nascimento do cliente.
- `idade` (int): Idade do cliente.
- `dinheiro` (double, opcional): Quantia em dinheiro que o cliente possui.
- `produtosComprados` (Array de Produtos): Produtos comprados pelo cliente.

#### Métodos:
- `falar(String fala)`: Imprime uma fala do cliente.
- `calcularIdade()`: Calcula a idade do cliente com base na data atual.
- `maioridade()`: Verifica se o cliente é maior de idade.
- `adicionarDinheiro(double valor)`: Adiciona dinheiro à carteira do cliente.
- `comprarProduto(Produto produto, Revendedor revendedor)`: Realiza a compra de um produto com um revendedor.

### Revendedor

#### Atributos:

- `nome` (String): Nome do revendedor.
- `cpf` (String): CPF do revendedor.
- `dataDeNascimento` (DateTime): Data de nascimento do revendedor.
- `idade` (int): Idade do revendedor.
- `genero` (Genero): Gênero do revendedor.
- `matricula` (String): Matrícula do revendedor.
- `produtosVendidos` (Array de Produtos): Produtos vendidos pelo revendedor.
- `porcentagemLucro` (double): Porcentagem de lucro em cima de cada produto vendido pelo revendedor.

#### Métodos:
- `falar(String fala)`: Imprime uma fala do revendedor.
- `calcularIdade()`: Calcula a idade do revendedor com base na data atual.
- `maioridade()`: Verifica se o revendedor é maior de idade.
- `venderProduto(Produto produto)`: Realiza a venda de um produto.

## Estrutura do Projeto

- `produto.dart`: Contém a implementação da classe Produto.
- `pessoa.dart`: Contém a implementação da classe Pessoa.
- `cliente.dart`: Contém a implementação da classe Cliente.
- `revendedor.dart`: Contém a implementação da classe Revendedor.
- `main.dart`: Arquivo principal para testar e executar o projeto.

## Squad DartVaders :)

| Adalto Mendes                                                        | Emerson Mendes                                                    | Erika Alves                                                         | Franciéllen Sousa                                                  | Jaqueline Dreyer                                                    | Jhonny Valente                                                       |
| -------------------------------------------------------------------- | ----------------------------------------------------------------- | ------------------------------------------------------------------- | ------------------------------------------------------------------ | ------------------------------------------------------------------- | -------------------------------------------------------------------- |
| <img src="/assets/integrantes/adalto.png" height="100" width="100"> | <img src="/assets/integrantes/eme.png" height="100" width="100"> | <img src="/assets/integrantes/erika.png" height="100" width="100"> | <img src="/assets/integrantes/fran.png" height="100" width="100"> | <img src="/assets/integrantes/jaque.png" height="100" width="100"> | <img src="/assets/integrantes/jhonny.png" height="100" width="100"> |

| João Rebouças                                                          | Kamila Teófilo                                                     | Leidiane Silva                                                       |
| ---------------------------------------------------------------------- | ------------------------------------------------------------------ | -------------------------------------------------------------------- |
| <img src="/assets/integrantes/reboucas.png" height="100" width="100"> | <img src="/assets/integrantes/kami.png" height="100" width="100"> | <img src="/assets/integrantes/leidi.jpeg" height="100" width="100"> |

## Instruções

1. Faça o fork deste projeto para o seu Github.
2. Clone o repositório forkeado para sua máquina local.
3. Utilize o arquivo `main.dart` para testar e executar seu projeto como o comando `dart run main.dart` no terminal do vscode.


