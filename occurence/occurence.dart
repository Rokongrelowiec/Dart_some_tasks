void main() {
  occurence("abca");
  occurence("something");
  occurence("aaabcccaaadbb");
}

occurence(word) {
  var dct = {};
  var lst = word.split('');
  for (var i in lst) {
    if (dct.containsKey(i)) {
      dct[i] += 1;
    } else {
      dct[i] = 1;
    }
  }
  print(dct);
}
