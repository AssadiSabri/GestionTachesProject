class Task {
  final int id;
  String name;
  String description;
  String status;
  DateTime finalDate;

  Task({
    required this.id,
    required this.name,
    required this.description,
    required this.status,
    required this.finalDate,
  });

  factory Task.createTask({
    required String name,
    required String description,
    required String status,
    required DateTime finalDate,
  }) {
    return Task(
      id: DateTime.now().millisecondsSinceEpoch,
      name: name,
      description: description,
      status: status,
      finalDate: finalDate,
    );
  }

  void editTask({
    required String name,
    required String description,
    required String status,
  }) {
    this.name = name;
    this.description = description;
    this.status = status;
  }

  void deleteTask(List<Task> taskList) {
    taskList.remove(this);
  }
}