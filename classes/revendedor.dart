import '../enums.dart';
import 'pessoa.dart';
import 'produto.dart';

class Revendedor extends Pessoa {
  final String matricula;
  List<Produto> produtosVendidos = [];
  double porcentagemLucro;

  Revendedor(super.nome, super.cpf, super.dataDeNascimento, super.genero,
      this.matricula, this.produtosVendidos, this.porcentagemLucro);

  @override
  void falar(String mensagem) {
    String pronome;
    switch (genero) {
      case Genero.Masculino:
        pronome = 'o';
        break;

      case Genero.Feminino:
        pronome = 'a';
        break;
      default:
        pronome = 'a pessoa';
    }

    print('Revendedor $nome diz: $mensagem');
  }

  void venderProduto(Produto produto) {
     try {
    produto.realizarVenda();
    produtosVendidos.add(produto);
    } catch (e) {
      throw e;
    }
  }

  double calcularTotalVendido(){
    double total = 0.0;
    for(Produto produto in produtosVendidos){
      total +=produto.verReceitaGerada();
    }
    return total;
  }

  double calcularMediaProdutosVendidos(){
    if (produtosVendidos.isEmpty){
      return 0.0;
    }
    double total = calcularTotalVendido();
    return total/produtosVendidos.length;
  }
}
