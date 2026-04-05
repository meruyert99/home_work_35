import '../model/task_repository.dart';
import '../model/task.dart';

class TaskController {
  final TaskRepository repository;

  TaskController(this.repository);

  List<Task> loadTasks() {
    return repository.getTasks();
  }

  void addTask(String title) {
    final task = Task(
      id: DateTime.now().toString(),
      title: title,
    );
    repository.addTask(task);
  }
}
