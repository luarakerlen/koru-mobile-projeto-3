import 'pessoa.dart';

class Cliente extends Pessoa {
  late double? dinheiro;
  List<Produto> produtosComprados = [];

  Cliente(super.nome, super.cpf, super.dataDeNascimento, {this.dinheiro});

  void adicionarDinheiro(double valor) {
    this.dinheiro = (this.dinheiro ?? 0) + valor;
  }

  void falar(String fala) {
    print("Cliente $nome diz: $fala");
  }

  void comprarProduto(Produto produto, Revendedor revendedor) {
    if( dinheiro >= produto.valor){
      revendedor.adicionarProdutoVendido(produto);
      dinheiro -= produto.valor;
      produtosComprados.add(produto);
    } else {
      print('$nome não possui dinheiro suficiente para comprar o produto ${produto.nome}');
    }
}
