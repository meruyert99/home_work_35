import '../model/task.dart';
import '../../core/service/task_service.dart';
import 'task_view.dart';
import '../../core/error/error_handler.dart';

class TaskPresenter {
  final TaskService service;
  final TaskView view;

  TaskPresenter(this.service, this.view);

  void loadTasks() {
    try {
      final tasks = service.loadTasks();
      view.showTasks(tasks);
    } catch (e) {
      view.showError(ErrorHandler.handle(e));
    }
  }

  void addTask(String title) {
    try {
      service.addTask(title);
      loadTasks();
    } catch (e) {
      view.showError(ErrorHandler.handle(e));
    }
  }
}
