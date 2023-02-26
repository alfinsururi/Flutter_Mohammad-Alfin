import 'dart:io';
void main() {
  // Eksplorasi 1.2
  for (int i = 1; i <= 9; i++) {
    stdout.write('$i');
    for (int j = 2; j <= 9; j++) {
      stdout.write('${i * j}'. padLeft(2) + '');
    }
    print('');
  }
}