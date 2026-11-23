import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/my_card.dart';
import '../components/my_text.dart';


class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MyText(text: "Profile"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0), 
        child: ListView(
          children: [ 
            const Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('../assets/image/letty.png'), 
              ),
            ),
            const SizedBox(height: 24), 

            MyCard(
              title: "Daniswara Choirun Nesa Arifin", 
              icon: Icons.person_outline, 
            ),
            const SizedBox(height: 10),
 
            MyCard(
              title: "07/11 PPLG 2",  
              icon: Icons.class_outlined,
            ),
            const SizedBox(height: 10),

            MyCard(
              title: "Nama panggilan nesa, suka bakso, lahir di kudus 12 Maret 2010", 
              icon: Icons.abc_outlined,
            ),
          ],
        ),
      ),
    );
  }
}