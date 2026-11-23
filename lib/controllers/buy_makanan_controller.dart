import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../models/list_makanan_model.dart ';

class BuyMakananController extends GetxController{
  late ListMakananModel makanan;
  TextEditingController hargaMakanan = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    
    if (Get.arguments != null && Get.arguments is ListMakananModel) {
      makanan = Get.arguments;
    } else {
      print("Warning: Data makanan tidak ditemukan di Get.arguments!");
    }
  }

  void bayar (){
    TextEditingController sub = hargaMakanan;
    // double PPN = sub * 0.05;
    Get.snackbar("NA", "Belum ada operasi hitung :)");
  }
}