void main() {
  print(strong(145));
  print(strong(120));
}

fact(n) {
  var sum = 1;
  for (var i = 1; i <= n; i++) {
    sum *= i;
  }
  return sum;
}

strong(number) {
  number = number.toString();
  var lst = [];
  for (var i = 0; i < number.length; i++) {
    var s = int.parse(number[i]);

    lst.add(fact(s));
  }

  num sum = 0;
  for (var e = 0; e < lst.length; e++) {
    sum += lst[e];
  }
  return int.parse(number) == sum;
}
