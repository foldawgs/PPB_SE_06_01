void main() {
  List<Map<String, dynamic>> daftarMahasiswa = [
    {
      "nama": "John Doe",
      "ipk": 3.88,
      "isMarried": false,
    },
    {
      "nama": "Andi Doe",
      "ipk": 3.78,
      "isMarried": true,
    },
    {
      "nama": "Budi Doe",
      "ipk": 3.68,
      "isMarried": true,
    }
  ];

  print("Data Mahasiswa:");
  for (var mahasiswa in daftarMahasiswa) {
    print("Nama: ${mahasiswa['nama']}, IPK: ${mahasiswa['ipk']}, Menikah: ${mahasiswa['isMarried']}");
  }

  double totalIpk = 0.0;
  for (var mahasiswa in daftarMahasiswa) {
    totalIpk += mahasiswa['ipk'];
  }
  double rataRataIpk = totalIpk / daftarMahasiswa.length;

  int jumlahMenikah = 0;
  for (var mahasiswa in daftarMahasiswa) {
    if (mahasiswa['isMarried'] == true) {
      jumlahMenikah++;
    }
  }

  print("Rata-rata IPK mahasiswa: $rataRataIpk");
  print("Jumlah mahasiswa yang sudah menikah: $jumlahMenikah");
}


