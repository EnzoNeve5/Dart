class DadosVeiculo {
  String fabricante;
  String modelo;
  int ano;
  DadosVeiculo(this.fabricante, this.modelo, this.ano);
}

void main() {
  Map<String, int> objetos = Map();
  objetos["Computadores"] = 20;
  objetos["Celulares"] = 200;
  objetos["Camas"] = 6;

  print(objetos);

  Map<String, dynamic> func = Map();
  func["nome"] = "Josefa";
  func["salario"] = 31234.55;
  func["dependentes"] = 1;
  func["emHomeOffice"] = true;

  print(func["emHomeOffice"]);

  Map<String, DadosVeiculo> carros = Map();

  carros["FED-6552"] = DadosVeiculo("Ferrari", "F-250", 2021);
  carros["SDN-9272"] = DadosVeiculo("Bugatti", "Veyron", 2022);

  carros.forEach(
    (k, v) => print("Placa: ${k}: ${v.fabricante}, ${v.modelo} (${v.ano})"),
  );
}
