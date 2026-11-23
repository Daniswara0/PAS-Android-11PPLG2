import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../routes.dart';
import '../models/login_model.dart';

class LoginController extends GetxController{
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs; 
  var loginModel = Rxn<LoginModel>();

  //hit API
  void login() async{
    if(txtUsername.text.toString().isEmpty || txtPassword.text.toString().isEmpty){
      Get.snackbar("Warning!", "Username dan password harus terisi!");
    }else{
      try{
        isLoading.value = true;
        final url =Uri.parse("https://mediadwi.com/api/latihan/login");

        final response = await http.post(url, body: {
          "username": txtUsername.text.toString(),
          "password": txtPassword.text.toString()
        });

        isLoading.value = false;

        if(response.statusCode == 200){
          //json message
          loginModel.value = loginModelFromJson(response.body);
          if (loginModel.value?.status == true) {
            Get.snackbar("Berhasil!", loginModel.value!.message);
            Get.offAllNamed(Routes.mainMenu);
          }else {
            Get.snackbar("Gagal!", loginModel.value?.message ?? "Login gagal");
          }
        }else{
          Get.snackbar("Gagal!", "Cek koneksi internet");
        }

      }catch (e){
        Get.snackbar("Gagal!", e.toString());
      }
    }
  }

}