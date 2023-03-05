class Hewan {
  double berat;
  
  Hewan(this.berat);
}

class Mobil {
  double kapasitas;
  double muatan = 0;
  
  Mobil(this.kapasitas);
  
  void tambahMuatan(Hewan hewan) {
    if (muatan + hewan.berat <= kapasitas) {
      muatan += hewan.berat;
      print("Berat hewan ${hewan.berat} kg berhasil ditambahkan ke dalam mobil");
    } else {
      print("Kapasitas mobil tidak mencukupi untuk menambahkan hewan dengan berat ${hewan.berat} kg");
    }
  }

  void jalan() {
    if (muatan < 1 ) {
      print("Mobil belum berjalan karena belum ada muatan");
    } else if (muatan > kapasitas) {
      print("Mobil tidak dapat berjalan karena muatan terlalu berat");
    } else if ( muatan < kapasitas) {
      print('Mobil berjalan dengan muatan $muatan kg');
    } else {
      print('Mobil tidak berjalan');
    }
  }
}

void main() {
  Hewan hewan1 = Hewan(0);
  Hewan hewan2 = Hewan(0);
  Mobil mobil = Mobil(500);
  
  mobil.tambahMuatan(hewan1);
  mobil.tambahMuatan(hewan2);
  mobil.jalan(); 
}