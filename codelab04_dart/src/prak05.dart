void main() {
  var record = (10, 20);
  print(record);

  record = tukar(record);
  print(record);

  // Record type annotation in a variable declaration:
  (String, String)? mahasiswa = ("Firdaus Yuli Darmawan", "231080200034");
  print(mahasiswa);

  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}

(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}