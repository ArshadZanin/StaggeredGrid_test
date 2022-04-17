import 'package:get/get.dart';
import 'package:researchfin/core/bindings/home_binding.dart';
import 'package:researchfin/views/home_page/home_page_web_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePageWebView(),
      binding: HomeBinding(),
    ),
  ];
}
