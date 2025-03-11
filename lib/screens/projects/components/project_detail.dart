import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screens/projects/components/project_link.dart';
import 'package:flutter_portfolio/model/project_model.dart';
import 'package:flutter_portfolio/constant.dart';
import 'package:flutter_portfolio/view_model/responsive.dart';

class ProjectDetail extends StatelessWidget {
  final int index;
  const ProjectDetail({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Text(
            projectList[index].name,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        Responsive.isMobile(context)
            ? const SizedBox(
                height: defaultPadding / 2,
              )
            : const SizedBox(
                height: defaultPadding,
              ),
        // Scrollable Container for Description
        Expanded(
          child: SingleChildScrollView(
            child: Text(
              projectList[index].description,
              style: const TextStyle(color: Colors.grey, height: 1.5),
            ),
          ),
        ),
        ProjectLinks(
          index: index,
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
      ],
    );
  }
}
