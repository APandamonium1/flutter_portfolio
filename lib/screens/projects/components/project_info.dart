import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screens/projects/components/project_detail.dart';
import 'package:get/get.dart';
import 'package:flutter_portfolio/model/project_model.dart';
import 'package:flutter_portfolio/constant.dart';
import 'package:flutter_portfolio/view_model/getx_controllers/projects_controller.dart';
import 'package:flutter_portfolio/screens/projects/components/image_viewer.dart';

class ProjectStack extends StatelessWidget {
  final controller = Get.put(ProjectController());
  ProjectStack({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        controller.onHover(index, value);
      },
      onTap: () {
        ImageViewer(context, projectList[index].image);
      },
      borderRadius: BorderRadius.circular(30),
      child: AnimatedContainer(
        padding: const EdgeInsets.only(
            left: defaultPadding, right: defaultPadding, top: defaultPadding),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: bgColor),
        duration: const Duration(milliseconds: 500),
        child: ProjectDetail(
          index: index,
        ),
      ),
    );
  }
}
