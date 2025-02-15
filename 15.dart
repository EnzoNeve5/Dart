abstract class Animal {
  void fazerSom();
}

class BemTeVi implements Animal {
  @override
  void fazerSom() {
    print("Bem Te Vi!");
  }
}

void main() {
  BemTeVi passaro = BemTeVi();
  passaro.fazerSom();
}
