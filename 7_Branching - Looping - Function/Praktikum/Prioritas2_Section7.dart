import 'dart:io';
void main() {
  // Prioritas 2.1
  piramida();
  
  // Prioritas 2.2
  jamPasir(6);
}
// Function Prioritas 2.1
void piramida () {
  print('Piramida');
  for (int i = 1; i <= 8; i++) {
    for (int k = 1; k <= i; k++) {
      stdout.write('*');
    }
    for (int l = 1; l <= i - 1; l++) {
      stdout.write('*');
    }
    stdout.write('');
  }
}
// Function dari Pioritas 2.2
void jamPasir(int n) {
  for (int i = n; i >= 1; i--) {
    for (int j = 1; j <= n - i; j++) {
      stdout.write(' ');
    }
    for (int k = 1; k <= 2 * i - 1; k++) {
      stdout.write('0');
    }
    stdout.write('\n');
  }
  for (int i = 2; i <= n; i++) {
    for (int j = 1; j <= n - i; j++) {
      stdout.write(' ');
    }
    for (int k = 1; k <= 2 * i - 1; k++) {
      stdout.write('0');
    }
    stdout.write('\n');
  }
}
