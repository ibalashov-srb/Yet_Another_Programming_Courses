/**
 * Этот класс нам нужен для хранения задач в коде.
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
