import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constant.dart';
import 'package:flutter_portfolio/view_model/getx_controllers/education_controller.dart';
import 'package:flutter_portfolio/view_model/responsive.dart';
import 'package:flutter_portfolio/screens/education/components/title_text.dart';
import 'package:get/get.dart';
import 'package:flutter_portfolio/screens/education/components/education_grid.dart';

class EducationPage extends StatelessWidget {
  EducationPage({super.key});
  final controller = Get.put(EducationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isLargeMobile(context))
            const SizedBox(
              height: defaultPadding,
            ),
          const TitleText(prefix: 'My', title: 'Education'),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
              child: Responsive(
                  desktop: EducationGrid(
                    crossAxisCount: 3,
                  ),
                  extraLargeScreen: EducationGrid(
                    crossAxisCount: 4,
                  ),
                  largeMobile: EducationGrid(crossAxisCount: 1, ratio: 1.8),
                  mobile: EducationGrid(crossAxisCount: 1, ratio: 1.5),
                  tablet: EducationGrid(
                    ratio: 1.4,
                    crossAxisCount: 2,
                  )))
        ],
      ),
    );
  }
}
