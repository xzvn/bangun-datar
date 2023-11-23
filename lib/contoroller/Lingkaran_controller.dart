import 'package:get/get.dart';

class LingkaranController extends GetxController{
  var r;
  final hasil = "".obs;
  final angka = "".obs;

  void hitungluas(){
    var hitung = 3.14 * r * r;
    hasil.value = "Hasil Perhitungan luas dari jari jari $r adalah $hitung";
    angka.value = "$hitung";
  }

  void hitungkeliling(){
    var keliling = 2 * 3.14 * r;
    hasil.value = "Hasil Perhitungan Keliling dari jari jari $r adalah $keliling";
    angka.value = "$keliling";
  }

}