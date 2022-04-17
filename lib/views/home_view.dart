import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:researchfin/core/controllers/view_controllers/home_view_controller.dart';
import 'package:researchfin/widgets/smart_widgets/box.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final controller = Get.put(HomeViewController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton(
                onPressed: () {},
                //  child: const Text("Add Widget"),
                child: DropdownButton(
                  // style: TextStyle(color: Colors.black),
                  dropdownColor: Colors.white,
                  icon: const Center(
                    child: Text(
                      "Add Widget",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  underline: Container(),
                  onChanged: (value) {
                    controller.aspectRatioList.add(value.toString());
                    controller.update();
                  },
                  items: ['1x1', '2x2', '1x2', '2x1'].map((item) {
                    return DropdownMenuItem(value: item, child: Text(item));
                  }).toList(),
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GetBuilder<HomeViewController>(builder: (controller) {
                return SingleChildScrollView(
                  child: StaggeredGrid.count(
                    crossAxisCount: 4,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    children: List.generate(controller.aspectRatioList.length,
                        (index) {
                      String heightValue =
                          controller.aspectRatioList[index].split('x').first;
                      String widthValue =
                          controller.aspectRatioList[index].split('x').last;
                      return StaggeredGridTile.count(
                        crossAxisCellCount: int.parse(widthValue),
                        mainAxisCellCount: int.parse(heightValue),
                        child: BoxWidget(
                          controller: controller,
                          index: index,
                        ),
                      );
                    }),
                  ),
                );
              }),
            )),
          ],
        ),
      ),
    );
  }
}
