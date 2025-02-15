class Pessoa {
  String nome = "Gustavo";
  int idade = 20;

  void apresentar() {
    print("Olá, o meu nome é $nome e tenho $idade anos de idade.");
  }
}

void main() {
  Pessoa pessoa1 = Pessoa();
  Pessoa pessoa2 = Pessoa();
  pessoa1.nome = "Mateus";
  pessoa1.idade = 30;
  pessoa2.nome = "Isaac";
  pessoa2.idade = 25;

  pessoa1.apresentar();
  pessoa2.apresentar();
}
