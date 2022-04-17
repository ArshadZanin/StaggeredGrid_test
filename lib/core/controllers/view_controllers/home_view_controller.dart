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
  List<String> size = ['1x1','1x2','1x3','1x4','2x1','2x2','2x3','2x4'];

  List<String> get aspectRatioList => _aspectRatioList;
  set aspectRatioList(List<String> value) {
    _aspectRatioList = value;
    update();
  }
}
