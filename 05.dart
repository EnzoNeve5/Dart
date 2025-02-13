void main() {
  bool ideal;
  double peso = 60.0;
  double altura = 1.73;

  double imc = peso / (altura * altura);

  if (imc < 18.5) {
    print("Magreza");
    ideal = false;
  } else if (imc > 18.5 && imc < 24.9) {
    print("Normal");
    ideal = true;
  } else if (imc > 24.9 && imc < 29.9) {
    print("Sobrepeso");
    ideal = false;
  } else if (imc > 29.9 && imc < 34.9) {
    print("Obesidade grau I");
    ideal = false;
  } else if (imc > 34.9 && imc < 39.9) {
    print("Obesidade grau II");
    ideal = false;
  } else if (imc > 39.9) {
    print("Obesidade grau III");
    ideal = false;
  } else {
    print("Tivemos um problema com os tipos de dados inseridos :(");
    ideal = false;
  }

  String info = ideal ? "Peso Ideal!" : "Cuidado com a saúde!";

  print(info);
}
