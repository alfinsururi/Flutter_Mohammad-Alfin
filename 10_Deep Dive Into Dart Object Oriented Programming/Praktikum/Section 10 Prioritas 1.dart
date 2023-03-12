class BangunRuang {
  int? panjang;
  int? lebar;
  int? tinggi;
  int? sisi;
  int? v;

  BangunRuang () {
    panjang = 5;
    lebar = 3;
    tinggi = 4;
  }

  volume () {
    print('Rumus Volume tidak diketahui');
  }
}

class Kubus extends BangunRuang {
  Kubus({this.sisi});
  int? sisi;
  
  @override
  volume() {
    v = sisi! * sisi! * sisi!;
    print('Volume Kubus adalah: $v');
  }
}

class Balok extends BangunRuang {
  Balok({this.panjang, this.lebar, this.tinggi});
  int? panjang;
  int? lebar;
  int? tinggi;
  
  @override
  volume() {
    v = panjang! * lebar! * tinggi!;
    print('Volume Balok adalah: $v');
  }
}

void main () {
  var b1 = Kubus(sisi: 5);
  var b2 = Balok(panjang: 5, lebar: 3, tinggi: 4);
  
  b1.volume();
  b2.volume();
}