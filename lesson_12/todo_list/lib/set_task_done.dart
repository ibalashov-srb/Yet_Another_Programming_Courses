import 'dart:io';

int SetTaskDone() {
  print("Выберите номер задачи из списка задач in progress и введите его для заваершения задачи");

  var input = stdin.readLineSync();
  var intTaskID = 0;

  try {
    intTaskID = int.parse(input!);
  } catch (e) {
    throw Exception("Вы указали номер задачи не числом, завершаю работу.");
  }
  
  return intTaskID;
}