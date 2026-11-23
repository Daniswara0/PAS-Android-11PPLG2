import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/my_text.dart';
import '../controllers/list_makanan_controller.dart';
import '../components/my_card.dart';
import '../routes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MyText(text: 'Home - List Makanan'),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(16.0),
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: controller.dataMakanan.length,
            itemBuilder: (context, index) {  
              final makanan = controller.dataMakanan[index];
              return SizedBox(
                width: 300,  
                child: MyCard(
                  title: makanan.namaMakanan,
                  price: makanan.hargaMakanan.toString(),
                  description: makanan.deskripsiMakanan,
                  imageUrl: makanan.gambarMakanan,
                  onTap: () {
                    Get.toNamed(Routes.buyMakanan, arguments: makanan);
                  }
                ),
              );
            },
          ),
      ),
    );
  }
}