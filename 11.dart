class Pessoa {
  String nome;
  int idade;
  String profissao;

  Pessoa(this.nome, this.idade, this.profissao);

  void apresentar() =>
      print("Meu nome é $nome, tenho $idade anos e sou $profissao.");
}

void main() {
  Pessoa p1 = Pessoa("Pedro", 23, "Engenheiro");
  Pessoa p2 = Pessoa("João", 19, "Programador");
  p1.apresentar();
  p2.apresentar();
}
