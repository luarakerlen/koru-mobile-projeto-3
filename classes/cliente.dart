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

}
