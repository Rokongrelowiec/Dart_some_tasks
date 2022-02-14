void main() {
  closest([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]); 
  closest([3, 5, 2, 4, 1]); 
}

closest(lst) {
  dynamic sum = 0;
  for (int i = 0; i < lst.length; i++) {
    sum += lst[i];
  }
  var avg = sum / lst.length;
  var cls;
  cls = 0;
  for (int i = 0; i < lst.length; i++) {
    if (avg - lst[i] < 0) {
      lst[i] = lst[i] * -1;
    }
    if (avg - lst[i] < avg - lst[cls]) {
      cls = i;
    }
  }
  print(lst[cls]);
}
