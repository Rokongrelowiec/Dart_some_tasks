void main() {
  perm(['a', 'b', 'c']);
}

perm(a, {k: 0}) {
  if (a.length == k) {
    print(a);
  } else {
    for (int i = k; i < a.length; i += 1) {
      var c = a[k];
      a[k] = a[i];
      a[i] = c;
      perm(a, k: k + 1);
      c = a[k];
      a[k] = a[i];
      a[i] = c;
    }
  }
}
