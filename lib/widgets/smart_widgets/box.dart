import 'package:flutter/material.dart';
import 'package:researchfin/core/controllers/view_controllers/home_view_controller.dart';

class BoxWidget extends StatelessWidget {
  // final double height;
  // final double width;
  final HomeViewController controller;
  final List<String> size;
  final int index;
  const BoxWidget({
    Key? key,
    // required this.height,
    // required this.width,
    required this.controller,
    required this.index,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // height: height,
        // width: width,
        color: Colors.grey,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  //  child: const Text("Add Widget"),
                  child: DropdownButton(
                    // style: TextStyle(color: Colors.black),
                    dropdownColor: Colors.white,
                    icon: const Center(
                      child: Text(
                        "Resize",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    underline: Container(),
                    onChanged: (value) {
                      controller.aspectRatioList[index] = value.toString();
                      controller.update();
                    },
                    items: size.map((item) {
                      return DropdownMenuItem(value: item, child: Text(item));
                    }).toList(),
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 3,
            ),
            Center(
              child: Text(
                controller.aspectRatioList[index],
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 28),
              ),
            ),
            const Spacer(
              flex: 4,
            ),
          ],
        ),
      ),
    );
  }
}
