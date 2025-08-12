import 'task.dart';
import 'task_storage.dart';

class TaskManager {
  List<Task> intProgressTasks = [];
  List<Task> finishedTasks = [];
  TaskStorage storage = TaskStorage();

  TaskManager() {
    finishedTasks = storage.loadFinishedTasks();
    intProgressTasks = storage.loadInProgessTasks();

    intProgressTasks.sort((a, b) {
      if (a.priority > b.priority) {
        return -1;
      } else if (a.priority == b.priority){
        return 0;
      }
      return 1;
    });
  }

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

  void storeInProgressTasks(){
    storage.saveInProgessTasks(intProgressTasks);
  }

  void storeFinishedTasks(){
    storage.saveFinishedTasks(finishedTasks);
  }
}