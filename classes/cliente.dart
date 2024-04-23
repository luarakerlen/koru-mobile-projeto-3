import 'pessoa.dart';
import 'produto.dart';
import 'revendedor.dart';

class Cliente extends Pessoa {
  late double? dinheiro;
  List<Produto> produtosComprados = [];

  Cliente(super.nome, super.cpf, super.dataDeNascimento, super.genero, super.humor,
      {this.dinheiro});

  void adicionarDinheiro(double valor) {
    this.dinheiro = (this.dinheiro ?? 0) + valor;
  }

  void falar(String fala) {
    print("Cliente $nome diz: $fala");
  }

  void comprarProduto(Produto produto, Revendedor revendedor) {
    try {
      revendedor.venderProduto(produto);
      dinheiro = dinheiro! - produto.valor;
      produtosComprados.add(produto);
    } catch (e) {
      print(
          '$nome não possui dinheiro suficiente para comprar o produto ${produto.nome}');
    }
  }

  double calcularTotalGasto() {
    double total = 0;
    for (var produto in produtosComprados) {
      total += produto.valor;
    }
    return total;
  }

  double calcularMediaProdutosComprados() {
    if (produtosComprados.isEmpty) {
      return 0;
    }

    double somaValores = 0;
    for (var produto in produtosComprados) {
      somaValores += produto.valor;
    }
    return somaValores / produtosComprados.length;
  }

  void verResumo() {
    double totalGasto = calcularTotalGasto();
    double mediaProdutos = calcularMediaProdutosComprados();

    print(
        'O total de gasto por $nome foi ${totalGasto.toStringAsFixed(2)} reais média de valor dos produtos comprados é ${mediaProdutos.toStringAsFixed(2)} reais.');
  }

  void ordenarProdutosComprados() {
    produtosComprados.sort((a, b) => a.nome.compareTo(b.nome));
  }

  void verProdutosComprados() {
    ordenarProdutosComprados();
    print('Produtos comprados $nome:');
    for (var produto in produtosComprados) {
      print('${produto.nome} - ${produto.valor.toStringAsFixed(2)}');   
    }
  }
}
