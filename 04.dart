void main() {
  bool aprovado;
  double nota_av1 = 1.0;
  double nota_av2 = 8.5;

  double media = (nota_av1 + nota_av2) / 2;

  if (media < 6) {
    print("Infelizmente não passou! :(");
    aprovado = false;
  } else if (media != 10) {
    print("Passou! :)");
    aprovado = true;
  } else {
    print("Top! :D");
    aprovado = true;
  }

  String info = aprovado ? "Aprovado!" : "Reprovado";

  print(info);
}
