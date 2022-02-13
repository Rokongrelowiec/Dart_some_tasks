 void main() {
  secondSmallest([3, 2, 1, 11, 5, 2, 6, 7, 0, 1, -12, -5]);
  secondSmallest([11, 3, -9, 6, 5, 10, 20, 110]);
}

secondSmallest(lst) {
  var min = 0;
  var sec = 0;
  for (var i = 0; i < lst.length; i++) {
    if (lst[i] < lst[min]) {
      min = i;
    }
  }

  for (var i = 0; i < lst.length; i++) {
    if ((i != min) && (lst[i] < lst[sec])) {
      sec = i;
    }
  }
  print(lst[sec]);
}
