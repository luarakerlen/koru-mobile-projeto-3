import '../enums.dart';
import 'pessoa.dart';
import 'produto.dart';

class Revendedor extends Pessoa {
Revendedor(String nome, String cpf, DateTime dataDeNascimento, Genero genero,
    this.matricula)
    : super(nome, cpf, dataDeNascimento, genero);

final String matricula;
List<Produto> produtosVendidos = [];
double porcentagemLucro = 0.25;

double calcularTotalVendido() {
  double totalVendido = 0;
  produtosVendidos.forEach((element) {
    totalVendido += element.valor;
  });
  return totalVendido;
}

double calcularMediaProdutosVendidos() {
  double mediaProdutosVendidos = 0;
  if (produtosVendidos.length > 0) {
    mediaProdutosVendidos = calcularTotalVendido() / produtosVendidos.length;
  }
  return mediaProdutosVendidos;
}

double calcularLucroTotal() {
  double lucroTotal = 0;
  produtosVendidos.forEach((element) {
    lucroTotal += element.valor * porcentagemLucro;
  });
  return lucroTotal;
}

@override
void falar(String fala) {
  switch (genero) {
    case Genero.Masculino:
      print("Revedendor $nome diz: $fala");
      break;
    case Genero.Feminino:
      print("Revedendora $nome diz: $fala");
      break;
    case Genero.Outro:
      print("Pessoa revedendora $nome diz: $fala");
      break;
  }
}

  void venderProduto(Produto item){
    try{
      produtosVendidos.add(item);
      item.realizarVenda();
    }catch(e){
      throw(e);
    }
  }
}

