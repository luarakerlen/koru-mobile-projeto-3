import 'pessoa.dart';
import 'produto.dart';
import 'revendedor.dart';

class Cliente extends Pessoa{
  double dinheiro;
  List<String>produtoComprados = [];

  Cliente (super.nome, super.cpf, super.dataDeNascimento, super.generos,[this.dinheiro=0.0]);

  @override
  void falar(String fala) {
    print("Cliente ${super.nome} diz: $fala");
  }

  void adicionarDinheiro( double valor){

    this.dinheiro += valor;
    print('Agora a pessoa ${super.nome} possui: ${this.dinheiro.toStringAsFixed(2)} reais.');
  }

  void comprarProduto(Produto produto, Revendedor revendedor){
      if (dinheiro >= produto.valor) {
        dinheiro -= produto.valor;
        produtoComprados.add(produto.nome);
        print('${super.nome} comprou o produto ${produto.nome} por ${produto.valor.toStringAsFixed(2)} reais.');
      } else {
        print('${super.nome} não possui dinheiro suficiente para comprar o produto ${produto.nome}.');
      }
  }
}