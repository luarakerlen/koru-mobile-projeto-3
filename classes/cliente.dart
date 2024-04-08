import 'pessoa.dart';
import 'produto.dart';
import 'revendedor.dart';

class Cliente extends Pessoa {

  double dinheiro;
  List<Produto> _produtosComprados = <Produto>[];

  Cliente(
      {required super.nome,
        required super.cpf,
        required super.dataNascimento,
        required super.genero,
        this.dinheiro = 0,});
/// Dinheiro precisava ser opcional, mas caso recebesse como atributo nullable tinha possibilidade de ser null, causando problema na hora de adicionar o dinheiro, com ele tendo padrão como "0" ainda fica opcional no construtor mas caso não seja recebido não dará problema para adições futuras

  @override
  void falar(String texto) {
    print("Cliente $nome diz: $texto");
  }

  void adicionarDinheiro(double valor) {
    dinheiro += valor;
    print('${nome} após o depósito de $valor agora possui ${dinheiro.toStringAsFixed(2)} reais.');
  }

  void comprarProduto(Produto produto, Revendedor revendedor) {
    if (dinheiro >= produto.valor && produto.qtdEstoque > 0) {
      revendedor.venderProduto(produto);
      dinheiro -= produto.valor;
      _produtosComprados.add(produto);
    } else {
      print(
          "$nome não possui saldo suficiente ou o produto ${produto.nome} não tem estoque suficiente para a compra.");
    }
      print("O total de produtos comprados pelo ${nome} foi: ${_produtosComprados.length}");
  }
}

