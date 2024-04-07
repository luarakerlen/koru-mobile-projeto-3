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

        
}
