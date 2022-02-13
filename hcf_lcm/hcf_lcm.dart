void main() {
  print(hcf(15, 60));
  print(lcm(123, 11));
}

hcf(a, b) {
  var min = a > b ? a : b;
  var top;
  for (var i = 1; i <= min; i++) {
    if (a % i == 0 && b % i == 0) {
      top = i;
    }
  }
  return top;
}

lcm(a, b) {
  if (a == b) {
    return a;
  }
  var a_copy = a;
  var b_copy = b;
  while (a != b) {
    if (a > b) {
      b += b_copy;
    } else {
      a += a_copy;
    }
  }
  return a;
}
