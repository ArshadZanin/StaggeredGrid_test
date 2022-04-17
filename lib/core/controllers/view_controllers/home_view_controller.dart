import 'package:get/get.dart';

class HomeViewController extends GetxController {
  @override
  // ignore: unnecessary_overrides
  void onInit() async {
    super.onInit();
  }

  @override
  // ignore: unnecessary_overrides
  void onReady() {
    super.onReady();
  }

  List<String> _aspectRatioList = [];

  List<String> get aspectRatioList => _aspectRatioList;
  set aspectRatioList(List<String> value) {
    _aspectRatioList = value;
    update();
  }
}
