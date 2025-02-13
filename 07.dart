void main() {
  calculaSoma(18.5, 5.25);

  calculaSubtracao(18.5, 5.25);

  double mult = calculaMultiplicacao(2.5, 3.0);
  print(mult);
}

void calculaSoma(double a, double b) {
  double soma = a + b;
  print(soma);
}

void calculaSubtracao(double a, double b) {
  double subtracao = a - b;
  print(subtracao);
}

double calculaMultiplicacao(double a, double b) {
  double mult = a * b;
  return mult;
}
