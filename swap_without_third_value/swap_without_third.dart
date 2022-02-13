void main() {
  swap(10, 13);
  swap(107, 11);
}

void swap(a, b) {
  a = a + b;
  b = a - b;
  a = a - b;
  print('a: $a, b: $b');
}
