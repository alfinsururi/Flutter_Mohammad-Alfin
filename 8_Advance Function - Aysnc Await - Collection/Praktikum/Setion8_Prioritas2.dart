// Prioritas 2.2
import 'dart:math';
import 'dart:async';

// Prioritas 2.2
void rata2 () {
  List<double> nilai = [7, 5, 3, 6, 2, 1];

  double total = 0;
  for (int i = 0; i < nilai.length; i++) {
    total += nilai[i];
  }
  double rata = total / nilai.length;
  int rataBulat = rata.ceil();
  
  print("Nilai: $nilai");
  print("Rata-rata: $rataBulat");
}

// Prioritas 2.3
Future<int> factorial(int n) async {
  if (n == 0) {
    return 1;
  } else {
    return n * await factorial(n - 1);
  }
}

void main() async {
  print('Prioritas 2.2');
  rata2();
  print('');
  print('Prioritas 2.3');
  int n = 5;
  int result = await factorial(n);
  print('Faktorial dari $n adalah $result');
}
