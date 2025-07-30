/**
 * Туду лист
 * Хотим всегда отсортированный список задачек причем
 * если есть задачи с одинаковым приоритетом - сортируем в алфавитном порядке
 * shortName
 */

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

  TaskManager(this.intProgressTasks, this.finishedTasks);

  /**
   * [5, 5, 4, 3, 2, 2, 0]
   * добавляем 4
   */
  void addNewTask(Task task) {
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
}

void main() {
  var t1 = Task("wash cat", false, 0);
  var t2 = Task("have a diner", false, 1);
  var t3 = Task("clean the room", false, 5);

  var taskManager = TaskManager([], []);
  taskManager.addNewTask(t1);
  taskManager.addNewTask(t2);
  taskManager.addNewTask(t3);

  var t4 = Task("sell bike", false, 4);
  taskManager.addNewTask(t4);

  //taskManager.showTasks();
  taskManager.finishTask(2);

  Task t5 = Task("read HP", false, 5);
  taskManager.addNewTask(t5);
  taskManager.finishTask(2);
  taskManager.showTasks();
  //taskManager.finishTask(5);
}