import 'package:get/get.dart';

class PanjangController extends GetxController{
  int p= 0;
  int l= 0;
  final hasil ="".obs;
  final hasik ="".obs;

  void hitungluas() {
    int hitungl = p * l;
    hasil.value = "Hasil Perhitungan dari panjang kali $p * $l adalah  $hitungl";
    hasil.value = "$hitungl";
  }
    void hitungkeliling() {
      int hitungk = 2*(p+l);
      hasik.value =
      "Hasil Perhitungan dari panjang kali 2*($p+$l)adalah  $hitungk";
      hasik.value = "$hitungk";
    }
    }
