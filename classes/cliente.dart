import 'pessoa.dart';
import '../enums.dart';
import 'produto.dart';
import 'revendedor.dart';

class Cliente extends Pessoa {
double dinheiro;
List<Produto> produtosComprados = [];

Cliente(super.nome,
        super.cpf,
        super.dataDeNascimento,
        super.genero,
        {this.dinheiro = 0});


//Criação do método Adicionar Dinheiro
        void adicionarDinheiro (double valor){
	        if (valor > 0){
	                dinheiro = dinheiro + valor;
	                print("$nome agora possui R\$ ${dinheiro.toStringAsFixed(2)}.");
	                }
                }


// Refatoração do método falar() de Pessoa.dart
@override
void falar(String fala){
    print("Cliente $nome diz: $fala.");
  }

  // Validação para o método comprarProduto()
bool saldoInsuficiente(dinheiro, Produto){
  return dinheiro < Produto.valor;
}

//Mostrar saldo pos compra



//Criação do método comprarProduto()
void comprarProduto(Produto produto, Revendedor revendedor) {
  if (saldoInsuficiente(dinheiro, produto)) {
    print("$nome não possui dinheiro suficiente para efetuar a compra de ${produto.nome}");
    return;
    }
    else {
      revendedor.venderProduto(produto);
      produtosComprados.add(produto);
      dinheiro = dinheiro - produto.valor;
      print("O saldo atual de $nome é R\$${dinheiro.toStringAsFixed(2)}");
    }
  }
}
