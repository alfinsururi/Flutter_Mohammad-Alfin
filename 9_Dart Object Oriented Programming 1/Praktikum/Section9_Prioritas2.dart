class Kalkulator {
  double tambah(double a, double b) {
    return a + b;
  }

  double kurang(double a, double b) {
    return a - b;
  }

  double kali(double a, double b) {
    return a * b;
  }

  double bagi(double a, double b) {
    return a / b;
  }
}

void main () {
  Kalkulator operasi = Kalkulator();

  double hasilTambah = operasi.tambah(2, 3); 
  double hasilKurang = operasi.kurang(5, 2); 
  double hasilKali = operasi.kali(4, 3); 
  double hasilBagi = operasi.bagi(10, 5); 

  print(hasilTambah);
  print(hasilKurang);
  print(hasilKali);
  print(hasilBagi);
}