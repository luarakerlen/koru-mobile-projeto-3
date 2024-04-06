enum Genero { Feminino, Masculino, Outros }

void main() {
  Genero generoUsuario = Genero.Masculino;

  switch (generoUsuario) {
    case Genero.Feminino:
      print('Gênero: Femino');
      break;
    case Genero.Masculino:
      print('Gênero: Masculino');
      break;
    case Genero.Outros:
      print('Gênero: Outros');
      break;
    default:
      print('Gênero Desconhecido.');
  }
}
