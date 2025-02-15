var triplo = (int x) => x * 3;

void exibirMensagem({String nome = "Ahmad", int idade = 21}) {
  print("Nome: $nome, Idade: $idade");
}

void apresentar(String nome, [String? sobrenome]) {
  print("Olá, $nome ${sobrenome ?? ''}");
}

void executarOperacao(int a, int b, int Function(int, int) operacao) {
  print("Resultado: ${operacao(a, b)}");
}

void main() {
  print(triplo(9));
  exibirMensagem(nome: "Enzo", idade: 19);
  exibirMensagem();
  apresentar("Enzo");
  apresentar("Enzo", "Neves");
  executarOperacao(498, 365, (x, y) => x - y);
}
