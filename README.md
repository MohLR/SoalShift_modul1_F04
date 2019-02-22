# SoalShift_modul1_F04
Jawaban pengerjaan Soal Shift SISOP 2019 Modul 1

# Soal 1:
Kami menjawab soal ini dengan cara pertama-tama membuat bash script yang akan mendekripsi semua file (bash script yang dimaksud adalah soal1.sh), scriptnya secara singkat bekerja seperti ini, isi file di dekripsi dengan base64 -d, karena hasilnya formatnya seperti ketika hexdump suatu file, maka hasilnya akan di rebuild dengan xxd -r sehingga kembali ke bentuk awal file. Setelah file tersebut dibuat, kami tambakan line berikut ke crontab :
14 14 14 2 * bash /home/faqih/Ikul/soal1.sh
cron itu bermaksud akan bash suatu file dengan alamat pada PC "/home/faqih/Ikul/soal1.sh" pada pukul 14:14 tanggal 14 Februari

# Soal 2:


# Soal 3:
Kami menjawab soal ini dengan membuat bash script (bash script yang dimaksud adalah soal3.sh). Script ini akan mengambil suatu output awal dari /dev/urandom (dimana /dev/urandom memiliki output yang sangat random) lalu di hilangkan semua yang bukan alfanumeric dengan tr -dc [:alnum:] lalu diambil 12 karakter dengan head -c 12

# Soal 4:
Kami menjawab soal ini dengan membuat bash script (bash script yang dimaksud adalah soal4.sh) dulu. Script ini akan mengambil jam, menit, tanggal, bulan, dan tahun yang tercatat pada sistem untuk digunakan sebagai nama file backup dan mengambil jam untuk digunkan sebagai key (pada soal ini kami beranggapan bahwa enkripsi yang diminta adalah caesar cipher) lalu, dengan sed (stream editor) men-translate (atau mungkin pada kali ini mengubah) huruf setelah "y/" menjadi ketentuan setelah "/" kedua, sed ini akan meng-edit file backup yang sebelumnya berisi tulisan yang sama dengan apa yang ada di syslog. Setelah itu, tambahkan line berikut ke crontab :
0 * * * * bash ~/soal4.sh

# Soal 5:
