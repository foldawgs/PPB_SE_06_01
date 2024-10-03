// void main(){
//   // print("Lanjutan materi dart");
//   // int a = 10;
//   // int b = 5;
//   // print(a >= b ? true : false);

//   // int? a;
//   // // a = 10;
//   // print(a);

//   // List <dynamic> daftarMahasiswa() {
//   //   List <int> mahasiswa = [1,2,2];
//   //   return mahasiswa;
//   // }

//   sum(double a,double b){
//     return a + b;
//   }

//   List<String> daftarMahasiswa(List<String> mahasiswa){
//     return mahasiswa;
//   }
// }
//   sum(double a,double b){
//     return a + b;
//   }

//   List<String> daftarMahasiswa(List<String> mahasiswa){
//     return mahasiswa;
//   }

// void main(){
//   print(daftarMahasiswa(["Agus","Budi","Caca"]));
// }


double rerataIPKMahasiswa(List<double> a){
  double sum = 0;
  for (var i = 0; i < a.length; i++){
    sum += a[i];
  }
  return sum / a.length;
}

void main(){
  print(rerataIPKMahasiswa([3.9,3.88,3.77,4.0,3.5]));

}