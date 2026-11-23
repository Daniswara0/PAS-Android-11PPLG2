import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/my_button.dart';
import '../components/my_text.dart';
import '../components/my_textfield.dart';

import '../controllers/login_controller.dart';
import '../routes.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MyText(text: 'Halaman Login'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 60),
            Center(
              child: const MyText(text: ' Aplikasi Kuliner & Informasi Liga Inggris', fontSize: 30),
            ),
            const SizedBox(height: 24),
            MyTextField(
              controller: controller.txtUsername,
              hintText: 'Masukkan Username Anda',
            ),
            const SizedBox(height: 12),
            MyTextField(
              controller: controller.txtPassword,
              obscureText: true,
              hintText: 'Masukkan Password Anda',
            ),
            const SizedBox(height: 12),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Obx(
                  () => controller.isLoading.value
                      ? const Center(child: CircularProgressIndicator())
                      : MyButton(
                          text: 'Sign Up',
                          onPressed: () => controller.login(),
                          backgroundColor: Colors.blue,
                          textColor: Colors.white,
                        ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
