Flutter Command Line Interface (CLI) and Flutter package management

1. Flutter CLI

- Alat yang digunakan untuk berinteraksi dengan Flutter SDK
- Perintah dijalankan dalam terminal

;

- flutter doctor

Perintah untuk menampilkan informasi softaware yang dibutuhkan Flutter

- flutter Create

Perintah untuk membuat project aplikasi Flutter baru di directory tertentu

: flutter create <APP_NAME>

- flutter run

Perintah untuk menjalankan project aplikasi di device yang tersedia

: flutter run <DART_FILE>

- flutter emulator

Perintah untuk menampilkan daftar emulator yang terinstall dan menampilkan option untuk membuka emulator atau membuat emulator baru

: flutter emulators

: flutter emulators --launch <EMULATOR_ID>


- flutter channel

Perintah untuk menampilkan daftar flutter channel yang tersedia dan menunjukkan channel yang digunakan saat ini

- flutter pub

1. flutter pub add, untuk menambahkan packages ke dependencies yangg ada di pubspec.yaml
2. flutter pub get, untuk mendownload semua packages atau dependencies yang ada di pubspec.yaml

- flutter build

Perintah untuk memproduksi sebuah file aplikasi untuk keperluan deploy atau publish ke AppStore, PlayStore, dll.

: flutter build apk

- flutter clean

Perintah untuk menghapus folder build serta file lainnya yang dihasilkan saat kita menjalankan aplikasi di emulator

Perintah ini akan memperkecil ukuran project tersebut

: flutter clean

2. Packages Management

- Flutter mendukung sharing packages
- Packages dibuat developers lain
- Mempercepat pengembangan aplikasi karena tidak perlu membuat semuanya dari awal atau from scratch
- Mendapatkan packages di website pub.dev
