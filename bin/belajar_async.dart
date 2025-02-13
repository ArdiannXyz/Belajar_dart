// belajar_async.dart

import 'dart:async';

// Fungsi untuk mensimulasikan pengambilan data dari server (asinkron)
Future<String> fetchData() async {
  print("Mengambil data...");
  await Future.delayed(Duration(seconds: 2));
  return "Data berhasil diambil!";
}

// Fungsi untuk memproses data setelah diambil
Future<void> processData() async {
  print("Memproses data...");
  await Future.delayed(Duration(seconds: 1));
  print("Data berhasil diproses!");
}

// Fungsi utama yang menjalankan kedua fungsi di atas secara berurutan
Future<void> main() async {
  print("Program dimulai...");
  
  try {
    String data = await fetchData();
    print(data);
    
    await processData();
    print("Semua proses selesai!");
  } catch (e) {
    print("Terjadi kesalahan: $e");
  }
}
