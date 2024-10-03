// void main(){
//   String namaMahasiswa = "Otongocis";
//   double ipk = 3.9;

//   bool isMaried = true;
//   bool isMan = true;
//   bool isStudent = true;
//   bool isLoading = false;

//   int umur = 20;
//   int jumlahRuangan = 100;
//   int jumlahSaudaraKandung = 2;

//   double tinggiBadan = 210.2;
//   double beratBadan = 80.3;
//   double nilai = 95.7;
//   double ukuranSepatu = 47.9;

//   String hewanPeliharaan = "Biawak";
//   String namaOrtu = "Muklas";

//   // 

//   // 
//   var nama = "John Doe";
//   dynamic alamat = 'Jl. Jendral Soedirman';

//   print(nama);
//   print(alamat);

//   // nama = 100;
//   alamat = 100;
//   print(nama);
//   print(alamat);


// }

// void main(){
//   List<dynamic> daftarMahasiswa = [
//     "John Doe", 
//     "Jane Doe", 
//     2, 
//     3.88,
//     ["Games", "Coding"]
//   ];
//   print(daftarMahasiswa[3]);
//   daftarMahasiswa[3]= 3.77 ;
//   print(daftarMahasiswa[3]);

//   daftarMahasiswa[5]= "Kucing" ;
//   print(daftarMahasiswa);

// }



void main(){

  List<Map<String, dynamic>> mahasiswa = [
  {
    "nama" : "John Doe",
    "umur" : 20,
    "ipk" : 3.88,
    "isMarried": false,
    "hobi":["Games","Coding"]
  },
  {
    "nama" : "Andi Doe",
    "umur" : 30,
    "ipk" : 3.78,
    "isMarried": true,
    "hobi":["Games","Coding"]
  },
  {
    "nama" : "Budi Doe",
    "umur" : 20,
    "ipk" : 3.60,
    "isMarried": false,
    "hobi":["Games","Coding"]
  },
];

print(mahasiswa[0]["ipk"]);
}