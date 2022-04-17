import 'package:get/get.dart';
import 'package:researchfin/core/controllers/view_controllers/home_view_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeViewController>(HomeViewController());
  }
}
