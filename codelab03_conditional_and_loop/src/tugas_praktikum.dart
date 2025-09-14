void main() {
  String nama = "Firdaus Yuli Darmawan";
  String nim = "2341720244";

  for (int i = 0; i <= 201; i++) {
    bool prima = true;

    if (i < 2) {
      prima = false;
    } else {
      for (int j = 2; j <= i ~/ 2; j++) {
        if (i % j == 0) {
          prima = false;
          break;
        }
      }
    }

    if (prima) {
      print("Bilangan prima: $i | Nama: $nama | NIM: $nim");
    }
  }
}