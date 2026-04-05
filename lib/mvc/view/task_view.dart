import '../controller/task_controller.dart';

class TaskView {
  final TaskController controller;

  TaskView(this.controller);

  void render() {
    final tasks = controller.loadTasks();
    print("Tasks:");
    for (var t in tasks) {
      print("- ${t.title}");
    }
  }

  void addTask(String title) {
    controller.addTask(title);
    render();
  }
}
