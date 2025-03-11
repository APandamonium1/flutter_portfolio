import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constant.dart';
import 'package:flutter_portfolio/view_model/getx_controllers/work_controller.dart';
import 'package:flutter_portfolio/view_model/responsive.dart';
import 'package:flutter_portfolio/screens/work/components/title_text.dart';
import 'package:get/get.dart';
import 'package:flutter_portfolio/screens/work/components/work_grid.dart';

class WorkPage extends StatelessWidget {
  WorkPage({super.key});
  final controller = Get.put(WorkController());

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
          const TitleText(prefix: 'My', title: 'Work Experiences'),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
              child: Responsive(
                  desktop: WorkGrid(
                    crossAxisCount: 3,
                  ),
                  extraLargeScreen: WorkGrid(
                    crossAxisCount: 4,
                  ),
                  largeMobile: WorkGrid(crossAxisCount: 1, ratio: 1.8),
                  mobile: WorkGrid(crossAxisCount: 1, ratio: 1.5),
                  tablet: WorkGrid(
                    ratio: 1.4,
                    crossAxisCount: 2,
                  )))
        ],
      ),
    );
  }
}
