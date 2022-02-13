import 'dart:math';

void main() {
  double number = real(2, pi);
  print("My number: ${number.toStringAsFixed(3)}");
  print("Final result: ${pow(2, pi)}");
}

real(a, x) {
  num res = 0;

  for (var i = 1; i < 10; i++) {
    res += (pow(x * log(a), i)) / fact(i);
  }

  return res + 1;
}

fact(i) {
  if (i == 1) {
    return 1;
  } else {
    return i * fact(i - 1);
  }
}

