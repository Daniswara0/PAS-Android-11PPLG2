import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/list_feat_controller.dart';
import '../components/my_card.dart';
import '../components/my_text.dart';

class FeatPage extends StatelessWidget {
  FeatPage({super.key});

  final controller = Get.put(ListFeatController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MyText(text: 'Feat - Team Match'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Obx(
          () => controller.isLoading.value
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: controller.featModel.value!.teams.length,
                  itemBuilder: (context, index) {
                    final team = controller.featModel.value!.teams[index];
                    return SizedBox(
                      width: 300,
                      child: MyCard(
                        title: team.strTeam,
                        subtitle: team.strStadium.toString(),
                        description: team.strDescriptionEn,
                        imageUrl: team.strBadge,
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
