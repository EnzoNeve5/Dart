class Animal {
  String nome;

  Animal(this.nome);

  void emitirSom() {
    print("$nome faz um som.");
  }
}

class Gato extends Animal {
  Gato(String nome) : super(nome);

  @override
  void emitirSom() {
    print("$nome Mia!");
  }
}

void main() {
  Gato cat = Gato("Xer");
  cat.emitirSom();
}
