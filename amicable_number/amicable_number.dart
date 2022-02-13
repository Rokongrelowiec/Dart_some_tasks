void main() {
  print(amicableNumber(7));
  print(amicableNumber(6));
  print(amicableNumber(28));
  print(amicableNumber(32));
}

amicableNumber(num) {
  var lst = [];
  for (var i = 1; i < num; i++) {
    if (num % i == 0) {
      lst.add(i);
    }
  }
  dynamic sum = 0;
  for (var i = 0; i < lst.length; i++) {
    sum += lst[i];
  }
  return (sum == num);
}
