void main () {
  // Prioritas 1
  // Persegi

  print('Prioritas 1 Persegi');
  int s = 10;
  int kelilingp = (s * 4);
  int luasp = ( s * s);
  print('Keliling dari persegi yang memiliki ukuran $s cm adalah $kelilingp cm ');
  print('Luas dari persegi yang memiliki ukuran $s cm adalah $luasp cm ');

  // Persegi Panjang
  print('Prioritas 1 Persegi Panjang');
  int p = 10;
  int l = 5;
  int kelilingpp = (p + l) * 2;
  int luaspp =  p * l;
  print('Keliling dari persegi panjang yang memiliki ukuran $p cm dan $l cm adalah $kelilingpp cm');
  print('Luas dari persegi yang memiliki ukuran $p cm dan $l cm adalah $luaspp cm');

  // Lingkaran 
  print('Prioritas 1.2 Lingkaran');
  const phi = 3.14;
  double r = 14;
  double kelilingl = 2 * phi * r;
  double luasl = phi * r * r;
  print('Keliling dari lingkaran yang memiliki jari-jari $r cm adalah $kelilingl cm');
  print('Luas dari lingkaran yang memiliki jari-jari $r cm adalah $luasl cm');

  // Prioritas 2
  print('Prioritas 2.1');
  String firstName = 'Mohammad';
  String lastName = 'Alfin';
  String tempatLahir = 'Jakarta';
  print('Halo nama saya $firstName $lastName dan saya lahir di $tempatLahir');

  print('Prioritas 2.2 - Volume dari tabung');
  double t = 10;
  double volume = phi * (r * 2) * t;
  print('Volume dari tabung yang memiliki jari-jari $r cm dan tinggi $t cm adalah $volume cm');
}
