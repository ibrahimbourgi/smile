import 'package:get/get.dart';
import 'package:smile/view/screen/auth/main_screen/category_screen.dart';
import 'package:smile/view/screen/auth/main_screen/favorites_screen.dart';
import 'package:smile/view/screen/auth/main_screen/home_screen.dart';
import 'package:smile/view/screen/auth/main_screen/profile_screen.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;

  final tabs = const [
    HomeScreen(),
    CategoryScreen(),
    FavoritesScreen(),
    ProfilScreen(),
  ].obs;
}
