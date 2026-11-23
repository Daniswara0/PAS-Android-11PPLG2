import 'package:get/get.dart';
import 'pages/login_page.dart';
import 'pages/main_menu_page.dart';
import 'pages/buy_makanan_page.dart';


abstract class Routes {
  static const String login= '/login';
  static const String mainMenu = '/main_menu';
  static const String buyMakanan = '/buy_makanan';
  
  static final List<GetPage> myPages = [
    GetPage(
      name: login, 
      page: () => LoginPage(),
    ),
    GetPage(
      name: mainMenu,
      page: () => MainMenu(),
    ),
    GetPage(
      name: buyMakanan,
      page: () => BuyMakananPage(),
    ),
  ];
}