import '../../mvc/model/task.dart';

class TaskRepository {
  final List<Task> _tasks = [];

  List<Task> getTasks() => _tasks;

  void addTask(Task task) {
    _tasks.add(task);
  }
}
