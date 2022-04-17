library home_page_web_view.dart;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:researchfin/core/controllers/view_controllers/home_view_controller.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:researchfin/widgets/smart_widgets/box.dart';
part 'home_page_desktop.dart';
part 'home_page_mobile.dart';
part 'home_page_tablet.dart';

class HomePageWebView extends StatelessWidget {
  HomePageWebView({Key? key}) : super(key: key);

  final HomeViewController controller = Get.put(HomeViewController());

  @override
  Widget build(BuildContext context) {
    return Builder(
        builder: (context) => ScreenTypeLayout(
              mobile: _HomePageMobile(
                controller: controller,
              ),
              tablet: _HomePageTablet(
                controller: controller,
              ),
              desktop: _HomePageDesktop(
                controller: controller,
              ),
            ));
  }
}
