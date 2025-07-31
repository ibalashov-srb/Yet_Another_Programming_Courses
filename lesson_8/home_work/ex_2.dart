class Rectangle {
  int width;
  int height;

  Rectangle(this.width, this.height);

  int area() {
    // TODO: вернуть площадь (width * height)
    return 0;
  }
}

void main() {
  Rectangle r = Rectangle(4, 5);
  print(r.area() == 20 ? 'Test Passed' : 'Test Failed');
}
