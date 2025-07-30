import 'dart:math';

class Robot {
  int serial;
  int waranty;

  Robot(this.serial, this.waranty);

  @override
  String toString() {
    return "[$serial, $waranty]";
  }
}

void main() {
  List<Robot> robots = [];
  for (int i = 0; i < 10000000; i++) {
    robots.add(generateRobot());
  }

  var result = findRobotInLoop(robots, 12313);
  if (result >= 0) {
    print("Fount - $result");
  } else {
    print("Nothing");
  }
  
  var binaryRes = findRobotBinarySearch(robots, 12313);
  if (binaryRes >= 0) {
    print("Fount - $binaryRes");
  } else {
    print("Nothing");
  }
}

Robot generateRobot() {
  var waranty = Random().nextInt(30) + 10;
  var seq = Random().nextInt(100000);

  return Robot(seq, waranty);
}

int findRobotInLoop(List<Robot> robots, int targetSerial) {
  for (int i = 0; i < robots.length; i++) {
    if (robots[i].serial == targetSerial) {
      return i;
    }
  }

  return -1;
}

int findRobotBinarySearch(List<Robot> robots, int targetSerial) {
  robots.sort((a, b) => a.serial.compareTo(b.serial));
  var left = 0;
  var right = robots.length;

  while (left < right) {
    var middle = left + ((right - left) ~/ 2);
    if (robots[middle].serial == targetSerial) {
      return middle;
    } else {
      if (robots[middle].serial > targetSerial) {
        right = middle - 1;
      } else {
        left = middle + 1;
      }
    }
  }

  return -1;
}


/**
 * 1, 2, 3, 4, 5, 6
 */