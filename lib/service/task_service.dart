import '../repository/task_repository.dart';
import '../../mvc/model/task.dart';

class TaskService {
  final TaskRepository repository;

  TaskService(this.repository);

  List<Task> loadTasks() {
    return repository.getTasks();
  }

  void addTask(String title) {
    if (title.isEmpty) {
      throw Exception("Task title cannot be empty");
    }

    final task = Task(
      id: DateTime.now().toString(),
      title: title,
    );

    repository.addTask(task);
  }
}
