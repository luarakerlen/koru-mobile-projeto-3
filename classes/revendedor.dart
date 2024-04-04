import '../enums.dart';
import 'pessoa.dart';
import 'produto.dart';

class Revendedor extends Pessoa {
    Revendedor(String nome, String cpf, DateTime dataDeNascimento, Genero genero, this.matricula)
    : super(nome, cpf, dataDeNascimento, genero);

    final String matricula;
    List<Produto> produtosVendidos = [];
    double porcentagemLucro = 0.25;

}