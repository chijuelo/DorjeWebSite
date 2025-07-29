import 'package:get/get.dart';
import '../bindings/home_binding.dart';
import '../bindings/user_binding.dart';
import '../ui/pages/home_page/home_page.dart';
import '../ui/pages/login_page/login_page.dart';
import '../ui/pages/user_page/user_page.dart';
import 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
        name: Routes.home,
        page: () => const HomePage(),
        binding: HomeBinding()),
    GetPage(
      name: Routes.login,
      page: () => const LoginPage(),
    ),
    GetPage(
        name: Routes.user,
        page: () => const UserPage(),
        binding: UserBinding()),
  ];
}
