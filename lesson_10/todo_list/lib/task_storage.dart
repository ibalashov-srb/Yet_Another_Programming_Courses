import 'task.dart';
import 'dart:io';

class TaskStorage {
  String pathToInProgressTasks = "lesson_10/todo_list/storage/in_progress_tasks.csv";
  String pathToFinishedTasks = "lesson_10/todo_list/storage/finished_tasks.csv";

  TaskStorage();

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

  List<Task> loadInProgessTasks() {
    var task = loadTasksFromFile(this.pathToInProgressTasks);
    return task;
  }

  List<Task> loadFinishedTasks() {
    var task = loadTasksFromFile(this.pathToFinishedTasks);
    return task;
  }

  /**
   * ${shortName};${status};${priority}\n
   * wash cat;false;0
   */
  void saveInProgessTasks(List<Task> tasks) {
    var content = parseTasks(tasks);
    File(pathToInProgressTasks).writeAsStringSync(content);
  }

  void saveFinishedTasks(List<Task> tasks) {
    var content = parseTasks(tasks);
    File(pathToFinishedTasks).writeAsStringSync(content);
  }

  String parseTasks(List<Task> tasks) {
    List<String> stringedTasks= [];

    for (var task in tasks) {
      var stringedTask = "${task.shortName};${task.status};${task.priority}";
      stringedTasks.add(stringedTask);
    }

    var content = stringedTasks.join("\n");
    return content;
  }


}