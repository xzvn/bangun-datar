import 'package:get/get.dart';

class persegiController extends GetxController{
  int sisi= 0;
  final hasil ="".obs;
  final hasik ="".obs;

  void hitungluas(){
    int hitungl = sisi * sisi;
        hasil.value="Hasil Perhitungan dari $sisi adalah  $hitungl";
        hasil.value= "$hitungl";

  }
  void hitungkeliling(){
   int hitungk = sisi + sisi + sisi + sisi;
    hasik.value="hasil keliling dari sisi $sisi adalah $hitungk";
    hasik.value ="$hitungk";
}
}