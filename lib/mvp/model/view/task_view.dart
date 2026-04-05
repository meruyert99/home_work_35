import '../model/task.dart';

abstract class TaskView {
  void showTasks(List<Task> tasks);
  void showError(String message);
}
