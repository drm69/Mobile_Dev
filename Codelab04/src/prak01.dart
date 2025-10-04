void main() {
  final list = List<String?>.filled(5, null);

  list[1] = "Firdaus Yuli Darmawan"; 
  list[2] = "2341720244";          

  assert(list.length == 5);
  print(list.length);

  print(list);
}