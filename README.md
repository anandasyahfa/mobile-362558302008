| Informasi | Data Mahasiswa |
|---|---|
| **Nama Lengkap** | Ananda Syahfa Azzara |
| **NIM** | 362558302008 |
| **Kelas / Angkatan** | TRPL 3E / 2025 |
>>>>>>> 43a0bac (feat(w02): complete category filters, interactive bottom sheet, and sks warning banner)
| **Dosen Pengampu** | Sepyan Purnama Kristanto, M.Kom. |

## 1. Ringkasan Implementasi
Praktikum ini mengimplementasikan sistem navigasi multi-halaman pada aplikasi **Perpustakaan Kampus** menggunakan desain antarmuka Material 3. Alur perpindahan halaman dirancang sebagai berikut:
- **`Navigator.push()`**: Digunakan pada `HomePage` saat tombol "Lihat Detail" ditekan untuk menumpuk halaman `DetailPage` di atas *stack* navigasi.
- **`Navigator.pushReplacement()`**: Digunakan pada `DetailPage` saat tombol "Pinjam Buku" ditekan, sehingga halaman detail dihapus dari *stack* dan digantikan langsung oleh `SuccessPage`.
- **`Navigator.pop()`**: Digunakan untuk aksi tombol "Kembali", membuang halaman aktif saat ini dan mengembalikan pengguna ke halaman sebelumnya (atau kembali ke beranda dari `SuccessPage`).

## 2. Bukti Tangkapan Layar (Running App)
| Halaman Beranda (HomePage) | Halaman Detail Buku (DetailPage) | Halaman Sukses (SuccessPage) |
|---|---|---|
| ![Home](./foto1.png) | ![Detail](./foto2.png) | ![Success](./foto3.png) |


## 3. Kendala Layout yang Dihadapi & Solusinya
- **Kendala**: Terjadi *error* `BOTTOM OVERFLOWED BY 8.0 PIXELS` (muncul pita kuning-hitam) di bagian bawah halaman `SuccessPage`. Hal ini terjadi karena ukuran tinggi layar perangkat tidak mencukupi untuk merender seluruh susunan *widget* di dalam `Column` utama, terutama posisi tombol "Kembali ke Beranda".
- **Solusi**: Membungkus *widget* `Column` beserta seluruh isinya ke dalam `SingleChildScrollView`, lalu meletakkannya di dalam *widget* `Center`. Penyesuaian ini membuat area konten menjadi *scrollable* (dapat digulir) jika ukuran layar terbatas, sehingga *overflow* teratasi dengan aman.




