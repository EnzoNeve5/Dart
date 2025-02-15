void main() {
  print(ePar(41));

  print(ePar2(231620));

  print(calculaArea(5, 7));

  imprimeNome("José");
}

bool ePar(int numero) {
  return (numero % 2 == 0) ? true : false;
}

bool ePar2(int numero) => (numero % 2 == 0);

int calculaArea(int base, int altura) => base * altura;

void imprimeNome(String nome) => print("Olá, $nome!");
