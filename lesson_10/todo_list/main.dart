/**
 * Туду лист
 * Хотим всегда отсортированный список задачек причем
 * если есть задачи с одинаковым приоритетом - сортируем в алфавитном порядке
 * shortName
 */
import 'lib/task_manager.dart';

void main() {
  var taskManager = TaskManager();

  taskManager.showTasks();

  taskManager.storeInProgressTasks();
  taskManager.storeFinishedTasks();
}