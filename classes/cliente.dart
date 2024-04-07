class Cliente {
  double dinheiro;

  Cliente([this.dinheiro = 0.0]);

  void adicionarDinheiro(double? valor) {
    if (valor != null) {
      dinheiro += valor;
      print("Maria adicionou $valor à sua carteira. Agora você tem $dinheiro em dinheiro.");
    } else {
      print("O valor adicionado foi 'null'.");
    }
  }
}
