void main() {
  List<int> arrOfNubers = [0, 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20];

  for(var i =0; i< arrOfNubers.length; i++) {
    if (arrOfNubers[i] == 10) {
      break;
    }
    print(arrOfNubers[i]);
  }
}
