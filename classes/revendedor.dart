import '../enums/enums.dart';
import 'pessoa.dart';
import 'produto.dart';

class Revendedor extends Pessoa{
  final String matricula;
  List<Produto> _produtosVendidos = <Produto>[];
  final double porcentagemDeLucro = 0.2;

Revendedor({required super.nome, required super.cpf, required super.dataNascimento, required super.genero, required this.matricula});

@override void falar(String texto) {
    switch(super.genero){
      case (Genero.masculino):
        print("Revendedor ${super.nome} diz: ${texto}.");
        break;
      case(Genero.feminino):
        print("Revendedora ${super.nome} diz: ${texto}.");
        break;
      case(Genero.outro):
        print("Pessoa revendedora ${super.nome} diz: ${texto}.");
        break;
      default:
        print("Pessoa ${super.nome} diz: ${texto}");
    }
  }

  void venderProduto(Produto produto){
    if(produto.qtdEstoque>0){
      produto.realizarVenda();
      _produtosVendidos.add(produto);
      print(_produtosVendidos[0].nome);
    } else {
      print("Produto sem estoque no momento!");
    }
  }

}