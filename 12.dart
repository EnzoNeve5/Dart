class ContaBancaria {
  String titular;
  double _saldo = 250;

  ContaBancaria(this.titular);

  void depositar(double valor) {
    _saldo += valor;
  }

  double get saldo => _saldo;
  void exibirSaldo() => print("Saldo: BRL $_saldo");
}

void main() {
  ContaBancaria conta = ContaBancaria("João");
  conta.exibirSaldo();
  conta.depositar(500);
  conta.exibirSaldo();
  conta.depositar(50);
  conta.exibirSaldo();
}
