void main() {
  List<int> numeros = [100, 200, 300];

  for (int i = 0; i < numeros.length; i++) {
    print("Número: ${numeros[i]}");
  }

  numeros.forEach((num) => print("ForEach: $num"));

  for (var num in numeros) {
    print("For-in: $num");
  }
}
