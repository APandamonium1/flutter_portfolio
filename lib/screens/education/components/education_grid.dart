import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screens/education/components/education_details.dart';
import 'package:get/get.dart';
import 'package:flutter_portfolio/model/education_model.dart';
import 'package:flutter_portfolio/constant.dart';
import 'package:flutter_portfolio/view_model/getx_controllers/education_controller.dart';

class EducationGrid extends StatelessWidget {
  // The number of grid columns. Defaults to 2 for two grid items per row.
  final int crossAxisCount;
  // The aspect ratio of the grid items. A value greater than 1.0 makes items
  // longer (taller) vertically. Defaults to 2.0.
  final double ratio;
  // Create a ScrollController
  final ScrollController scrollController = ScrollController();
  // Constructor for the EducationGrid widget, with default values for grid
  // columns (2) and ratio (2.0 for longer grids).
  EducationGrid({super.key, this.crossAxisCount = 2, this.ratio = 1.3});
  final controller = Get.put(EducationController());

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      itemCount: educationList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          // Set the number of columns in the grid to 2
          crossAxisCount: crossAxisCount,
          // Make the grid items taller by adjusting the aspect ratio
          childAspectRatio: ratio),
      itemBuilder: (context, index) {
        return Obx(() => AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            margin: const EdgeInsets.symmetric(
                vertical: defaultPadding, horizontal: defaultPadding),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: const LinearGradient(colors: [
                  Colors.pinkAccent,
                  Colors.blue,
                ]),
                boxShadow: [
                  BoxShadow(
                    color: Colors.pink,
                    offset: const Offset(-2, 0),
                    blurRadius: controller.hovers[index] ? 20 : 10,
                  ),
                  BoxShadow(
                    color: Colors.blue,
                    offset: const Offset(2, 0),
                    blurRadius: controller.hovers[index] ? 20 : 10,
                  ),
                ]),
            child: EducationDetail(index: index)));
        //   // Wrap the content with SingleChildScrollView and RawScrollbar
        //   child: RawScrollbar(
        //     thumbColor: Colors.grey, // Grey color for the scrollbar
        //     radius: const Radius.circular(10),
        //     thickness: 6.0,
        //     thumbVisibility: true,
        //     child: SingleChildScrollView(
        //       child: EducationDetail(index: index),
        //     ),
        //   ),
        // ));
      },
    );
  }
}
