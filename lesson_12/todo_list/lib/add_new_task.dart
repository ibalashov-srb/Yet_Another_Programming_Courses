import 'dart:io';
import 'task.dart';

Task AddNewTask() {
  print("Введите что вам нужно сделать и нажмите Enter:");
  var taskName = stdin.readLineSync();

  print("Введите приоритет задачи от 0 до 5 включительно и нажмите Enter:");
  var taskPriority = stdin.readLineSync();

  if (taskPriority == null) {
    throw Exception("Вы не указали приоритет, завершаю работу.");
  }

  var intTaskPriority = 0;
  try {
    intTaskPriority = int.parse(taskPriority);
  } catch (e) {
    throw Exception("Вы указали приоритет не числом, завершаю работу.");
  }

  var newTask = Task(taskName!, false, intTaskPriority);
  return newTask;
}