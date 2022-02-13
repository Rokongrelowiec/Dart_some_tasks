void main() {
  freq([1, 2, 3, 4, 4, 3, 3, 3]);
}

freq(lst) {
  var dct = {};
  for (var i in lst) {
    if (dct.containsKey(i)) {
      dct[i] += 1;
    } else {
      dct[i] = 1;
    }
  }
  for (var i in dct.keys) {
    dct[i] = dct[i] / lst.length;
  }
  print(dct);
}
