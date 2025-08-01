/**
 * Туду лист
 * Хотим всегда отсортированный список задачек причем
 * если есть задачи с одинаковым приоритетом - сортируем в алфавитном порядке
 * shortName
 */

import 'dart:io';

class Task {
  String shortName;
  bool status;
  int priority; // 0 - 5; 5 наивысший

  Task(this.shortName, this.status, this.priority);

  @override
  String toString() {
    return "priority - $priority name - $shortName status - $status";
  }

  void finishTask() {
    status = true;
  }
}

class TaskManager {
  List<Task> intProgressTasks = [];
  List<Task> finishedTasks = [];

  TaskManager();

  /**
   * [5, 5, 4, 3, 2, 2, 0]
   * добавляем 4
   */
  void addNewTask(Task task) {
    if (!task.status) {
      if (intProgressTasks.length == 0) {
        intProgressTasks.add(task);
        return;
      }

      for (int i = 0; i < intProgressTasks.length; i++) {
        if (task.priority >= intProgressTasks[i].priority) {
          intProgressTasks.insert(i, task);
          return;
        }
      }
    } else {
      finishedTasks.add(task);
    }
  }

  void showTasks() {
    print("in progress tasks:");
    for(var i = 0; i < intProgressTasks.length; i++) {
      print("$i - ${intProgressTasks[i]}");
    }

    print("finished tasks:");
    for(var i = 0; i < finishedTasks.length; i++) {
      print("$i - ${finishedTasks[i]}");
    }
  }

  void finishTask(int index) {
    if (intProgressTasks.length < index) {
      return;
    }

    intProgressTasks[index].finishTask();
    finishedTasks.add(intProgressTasks[index]);
    intProgressTasks.removeAt(index);
  }

  /**
   * ${shortName};${status};${priority}\n
   * wash cat;false;0
   */
  List<Task> loadTasksFromFile(String path) {
    List<String> lines = File(path).readAsLinesSync();
    List<Task> tasks = [];
    
    for (var line in lines) {
      var splittedLine = line.split(";");
      
      if (splittedLine.length < 3) {
        continue;
      }

      var shortName = splittedLine[0];
      var status = bool.parse(splittedLine[1]);
      var priority = int.parse(splittedLine[2]);

      var newTask = Task(shortName, status, priority);
      tasks.add(newTask);
    }
    return tasks;
  }
}

void main() {
  var taskManager = TaskManager();

  var intProgressTasks = taskManager.loadTasksFromFile("lesson_9/in_progress_tasks.csv");
  for (var task in intProgressTasks) {
    taskManager.addNewTask(task);
  }

  var finishedTasks = taskManager.loadTasksFromFile("lesson_9/finished_tasks.csv");
  for (var task in finishedTasks) {
    taskManager.addNewTask(task);
  }

  taskManager.showTasks();
}