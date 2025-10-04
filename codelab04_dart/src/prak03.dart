void main() {
  var gifts = <String, dynamic>{};
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  gifts['nama'] = 'Firdaus Yuli Darmawan';
  gifts['nim'] = '231080200034';

  var nobleGases = <int, dynamic>{};
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  nobleGases[99] = 'Firdaus Yuli Darmawan';
  nobleGases[100] = '231080200034';

  var mhs1 = Map<String, String>();
  mhs1['nama'] = 'Firdaus Yuli Darmawan';
  mhs1['nim'] = '231080200034';

  var mhs2 = Map<int, String>();
  mhs2[1] = 'Firdaus Yuli Darmawan';
  mhs2[2] = '231080200034';

  print('gifts: $gifts');
  print('nobleGases: $nobleGases');
  print('mhs1: $mhs1');
  print('mhs2: $mhs2');
}