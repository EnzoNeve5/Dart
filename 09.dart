Future<String> carregarPrograma() async {
  await Future.delayed(Duration(seconds: 3));
  return "Iniciando programa!";
}

void main() async {
  print("Carregando...");
  String resultado = await carregarPrograma();
  print(resultado);
}
