import 'pessoa.dart';
import 'enums.dart';

class Cliente extends Pessoa {

  //método falar
  @override
  void falar(String fala) {
    print("Cliente $nome diz: $fala");
  }
}
