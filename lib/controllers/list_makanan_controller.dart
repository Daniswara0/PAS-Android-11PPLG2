import 'package:get/get.dart';
import '../models/list_makanan_model.dart';

class ListMakananController extends GetxController{

  List<ListMakananModel> dataMakanan = [
    ListMakananModel(namaMakanan: "Bakso", hargaMakanan: 18000, deskripsiMakanan: "Bakso sapi dengan kuah yang lezat", gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0Nwy9f3_BASZPv_VphngKEFDzrb4GYj1I3IMTMrU4fg&s=10" ),
    ListMakananModel(namaMakanan: "Nasi Goreng Spesial", hargaMakanan: 25000, deskripsiMakanan: "Nasi goreng bumbu rempah dengan telur mata sapi,ayam suwir, dan kerupuk.", gambarMakanan: "https://dcostseafood.id/wp-content/uploads/2023/04/Nasi-Goreng-telor.jpg" ),
    ListMakananModel(namaMakanan: "Mie Ayam Bakso", hargaMakanan: 20000, deskripsiMakanan: "Mie kenyal dengan topping ayam kecap, sawi hijau, dan 2 butir bakso sapi.", gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7cGgCKNOYn9nuwL6mACELemKUsA2WZTajqcPtGNA3TA-v0ZWP1QNleCp7&s=10" ),
    ListMakananModel(namaMakanan: "Sate Ayam Madura", hargaMakanan: 28000, deskripsiMakanan: " 10 tusuk sate ayam daging pilihan dengan siraman bumbu kacang kental.", gambarMakanan: "https://asset.kompas.com/crops/BJdOTeUCdwHWS6ImI9qDnf3s8nI=/0x0:1000x667/1200x800/data/photo/2023/12/19/6580e31d4d33e.jpeg" ), 
    ListMakananModel(namaMakanan: "Ayam Bakar Madu", hargaMakanan: 30000, deskripsiMakanan: " Ayam bakar olesan madu murni lengkap dengan sambal terasi dan lalapan.", gambarMakanan: "https://www.dapurkobe.co.id/wp-content/uploads/ayam-goreng-lengkuas.jpg" ),
    ListMakananModel(namaMakanan: "Es Teh Manis Jumbo", hargaMakanan: 8000, deskripsiMakanan: "Minuman teh melati segar dengan gula asli dan es batu kristal.", gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0Nwy9f3_BASZPv_VphngKEFDzrb4GYj1I3IMTMrU4fg&s=10" ),
    ListMakananModel(namaMakanan: "Rendang", hargaMakanan: 25000, deskripsiMakanan: "Rendang daging sapi dengan bumbu rempah yang kaya", gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfQZ2LyYsGJf8Aw4Ebd3TKbURx7VwkM4cbVokn1Km4HDWamaxYhGv98QY&s=10" ),
    ListMakananModel(namaMakanan: "Ayam Goreng", hargaMakanan: 18000, deskripsiMakanan: "Ayam goreng dengan bumbu khas Indonesia", gambarMakanan: "https://www.dapurkobe.co.id/wp-content/uploads/ayam-goreng-lengkuas.jpg" ),
    ListMakananModel(namaMakanan: "Soto Ayam", hargaMakanan: 15000, deskripsiMakanan: "Soto ayam dengan kuah bening yang segar", gambarMakanan: "https://www.dapurkobe.co.id/wp-content/uploads/soto-ayam.jpg" ),
    ListMakananModel(namaMakanan: "Sop Kaki Kambing", hargaMakanan: 30.000, deskripsiMakanan: "Sop kaki kambing dengan bumbu rempah yang kaya", gambarMakanan: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6z945ApMxkwr4xYbk2ZBQwFTRhcsHh3UlqhJ5_J2OQ4_F5uS0SMA032I&s=10" ),
  ].obs;
} 
