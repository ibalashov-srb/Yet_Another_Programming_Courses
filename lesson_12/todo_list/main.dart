/**
 * Туду лист
 * Хотим всегда отсортированный список задачек причем
 * если есть задачи с одинаковым приоритетом - сортируем в алфавитном порядке
 * shortName
 */
import 'lib/task_manager.dart';
import 'lib/add_new_task.dart';
import 'lib/set_task_done.dart';
import 'dart:io';

void main() {
  var taskManager = TaskManager();
  taskManager.showTasks();

  for (;;) {
    print("Если вы хотите добавить новую задачу - ввдеите Add/Добавить");
    print("Если вы хотите пометить задачу как завершенную - введите Set/Установить");
    var operation = stdin.readLineSync();

    if (operation != null && (operation.toLowerCase() == "add" || operation.toLowerCase() == "добавить")){
      try {
        var newTask = AddNewTask();
        taskManager.addNewTask(newTask);
        taskManager.showTasks();
      } catch (e){
        print(e);
      }
    } else if (operation != null && (operation.toLowerCase() == "set" || operation.toLowerCase() == "установить")) {
      try {
        var intTaskID = SetTaskDone();
        taskManager.finishTask(intTaskID);
        taskManager.showTasks();
      } catch (e) {
        print(e);
      }
    }

    taskManager.storeInProgressTasks();
    taskManager.storeFinishedTasks();

    print("Для завершения работы программы введите: Stop/Стоп");
    var input = stdin.readLineSync();

    if (input != null && (input.toLowerCase() == "stop" || input.toLowerCase() == "стоп")) {
      break;
    }

  }
}
