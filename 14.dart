abstract class Animal {
  void fazerSom();
}

class Pinto extends Animal {
  @override
  void fazerSom() {
    print("Piu piu!");
  }
}

void main() {
  Pinto pinto = Pinto();
  pinto.fazerSom();
}
