import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../models/list_feat_model.dart';

class ListFeatController extends GetxController{
  var isLoading = false.obs;
  var featModel = Rxn<PremierLeagueModel>();

  @override
  void onInit() {
    super.onInit();
    fetchTeams();
  }

  void fetchTeams() async{
    try {
      isLoading.value = true;
      
      final url = Uri.parse("https://www.thesportsdb.com/api/v1/json/123/search_all_teams.php?l=English%20Premier%20League");

      final response = await http.get(url);

      isLoading.value = false;

      if (response.statusCode == 200) {
        featModel.value = premierLeagueModelFromJson(response.body);
        Get.snackbar("Berhasil!", "Data film berhasil dimuat");
      } else {
        Get.snackbar("Gagal!", "Gagal memuat data dari server (Kode: ${response.statusCode})");
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar("Error!", e.toString());
    }
  }
}