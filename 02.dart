void main() {
  String nomeCurso = "Ciência da Computação";

  int qtdAlunos = 150;

  double mediaGeral = 9.5;

  bool temVaga = true;

  print("Olá, Mundo!");

  print(nomeCurso);

  print("A USP oferece à você o curso de " + nomeCurso);

  print("O curso $nomeCurso tem $qtdAlunos alunos!");
  print("Os discentes tiram a nota $mediaGeral em média! :)");

  print("Este curso tem vagas? $temVaga");

  dynamic variavelDinamica = 1;
  print(variavelDinamica);
  variavelDinamica = "teste";
  print(variavelDinamica);
}
