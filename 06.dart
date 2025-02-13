void main() {
  String tipoDeTecido = "Cobertores";

  switch (tipoDeTecido) {
    case "Cobertores":
      print("Lavagem pesada");
      break;
    case "Seda":
      print("Lavagem delicada ");
      break;
    case "Panos":
      print("Lavagem pesada com alvejante");
      break;
    case "Algodão":
      print("Lavagem diária");
      break;
    default:
      print("Verifique a etiqueta");
      break;
  }
}
