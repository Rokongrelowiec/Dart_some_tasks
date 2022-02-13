void main() {
  fib(10, -223, 422);
}

void fib(n, a, b) {
  var c;
  for (int i = 0; i < n; i++) {
    c = a + b;
    a = b;
    b = c;
    print("Number: $c, proportion: ${b / a}");
  }
}
