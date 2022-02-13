void main() {
  print(multiplyMatrice([
    [1, 2, 3],
    [4, 5, 6]
  ], [
    [10, 11],
    [20, 21],
    [30, 31]
  ]));

  print(multiplyMatrice([
    [1, 2, 3],
    [4, 5, 6]
  ], [
    [7],
    [8],
    [9]
  ]));
}

multiplyMatrice(lst1, lst2) {
  if (lst1[0].length != lst2.length) {
    return "Operation cant be ececuted";
  }

  var lst_res = [];
  var tmp = [];
  for (var i = 0; i < lst1.length; i++) {
    for (var j = 0; j < lst2[0].length; j++) {
      tmp.add(0);
    }
    lst_res.add(tmp);
    tmp = [];
  }

  for (var i = 0; i < lst1.length; i++) {
    for (var j = 0; j < lst2[0].length; j++) {
      for (var k = 0; k < lst2.length; k++) {
        lst_res[i][j] += lst1[i][k] * lst2[k][j];
      }
    }
  }
  return lst_res;
}
