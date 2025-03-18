class Task {
  String title;
  bool isCompleted;

  Task({required this.title, this.isCompleted = false});

  // Converter para Map (para salvar no SharedPreferences)
  Map<String, dynamic> toMap() {
    return {"title": title, "isCompleted": isCompleted};
  }

  // Criar a partir de um Map
  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(title: map["title"], isCompleted: map["isCompleted"]);
  }
}
