void main() {
  frames([3, 1, 2, 5, 8, 7, 4, 11, 13, 9], 3);
}

void frames(lst, k) {
  var lst1 = [];

  for (int i = 0; i < lst.length; i++) {
    var max = lst[i];
    var min = lst[i];
    for (int e = 0; e < k; e++) {
      if (i + e >= lst.length) {
        break;
      }
      if (max < lst[i + e]) {
        max = lst[i + e];
      }
      if (min > lst[i + e]) {
        min = lst[i + e];
      }
    }
    lst1.add(max - min);
  }
  var max = lst1[0];
  for (int w in lst1) {
    if (max < w) {
      max = w;
    }
  }
  print(max);
}
