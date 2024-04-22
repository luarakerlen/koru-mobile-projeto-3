import 'pessoa.dart';
import 'produto.dart';
import 'revendedor.dart';

class Cliente extends Pessoa {
  double dinheiro;
  List<Produto> produtosComprados = [];

  Cliente(super.nome, super.cpf, super.dataDeNascimento, super.genero,
      {this.dinheiro = 0});

//Criação do método Adicionar Dinheiro
  void adicionarDinheiro(double valor) {
    if (valor > 0) {
      dinheiro = dinheiro + valor;
      print("$nome agora possui R\$ ${dinheiro.toStringAsFixed(2)}.");
    }
  }

// Refatoração do método falar() de Pessoa.dart
  @override
  void falar(String fala) {
    print("Cliente $nome diz: $fala.");
  }

// Validação para o método comprarProduto()
  bool saldoInsuficiente(dinheiro, Produto) {
    return dinheiro < Produto.valor;
  }

//Criação do método comprarProduto()
  void comprarProduto(Produto produto, Revendedor revendedor) {
    if (saldoInsuficiente(dinheiro, produto)) {
      print("$nome não possui dinheiro suficiente para efetuar a compra de ${produto.nome}");
      return;
    } else {
      revendedor.venderProduto(produto);
      produtosComprados.add(produto);
      dinheiro -= produto.valor;
      print("O saldo atual de $nome é R\$ ${dinheiro.toStringAsFixed(2)}.");
    }
  }

//Criação de método ordenarProdutosComprados
void _ordenarProdutosComprados() {
  produtosComprados.sort((a, b) => a.nome.compareTo(b.nome));
}

//Criação de método verProdutosComprados
  void verProdutosComprados(){
    _ordenarProdutosComprados();
    print("Produtos comprados por $nome em ordem alfabética:");
    produtosComprados.forEach((produto)=> print(" - ${produto.nome} - R\$ ${produto.valor.toStringAsFixed(2)}"));
  }
}