void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.

  names1.add("Firdaus Yuli Darmawan");
  names2.addAll(["Firdaus Yuli Darmawan", "2341720244"]);

  print(names1);
  print(names2);
}