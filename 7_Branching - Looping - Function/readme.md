Section 7 - Branching, Looping, Function 1

If
- Memperlukan nilai bool (dari operator logical atau comparison)
- Menjalankan bagian proses jika nilai bool bernilai true
Penulisannya:

if (nilai_bool){
    // Proses jika nilai bool bernilai true
}

If Else
- Berjalan dengan if
- Menambah alternatif jika nilai bool adalah false

Penulisannya:

if (nilai_bool){
    // Proses jika nilai bool bernilai true
} else {
    // Proses jika nilai bool bernilai false
}

Else If
- Berjalan dengan if
- Menambah alternatif jika nilai bool adalah false
- Menambah pengujian nilai bool lain

Penulisannya:

if (nilai_bool){
    // Proses jika nilai bool bernilai true
} else if (nilai_bool1) {
    // Proses jika nilai_bool bernilai false
    // dan nilai_bool1 bernilai true
}

For
- Diketahui berapa kali perulangan terjadi
- Memerlukan nilai awal
- Memerlukan nilai bool, jika true maka perulangan dilanjutkan
- Memerlukan pengubah nilai

Penulisannya:

For (nilai_awal; nilai_bool; pengubah_nilai_awal) {
    // Proses berulang jika nilai_bool adalah true
}

While
- Tidak diketahui berapa kali perulangan terjadi
- Memerlukan nilai bool, jika true maka perulangan dilanjutkan

Penulisannya:

while (nilai_bool) {
    // Proses berulang jika nilai_bool adalah true
}

Do-While 
- Mengubah bentuk while
- Proses dijalankan minimum sekali, akan diteruskan jika nilai bool adalah true

Penulisannya:

do {
    // Proses berulang jika nilai_bool adalah true
} while (nilai_bool);

Function adalah kumpulan perintah atau prosedur yang dapat digunakan berkali-kali.

Penulisannya: 

tipe_data nama_fungsi() {
    // Perintah yang dijalankan saat function dipanggil
}
