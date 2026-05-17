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
        // Project Image
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            projectList[index].image,
            height: 100,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                height: 100,
                width: double.infinity,
                color: Colors.grey[800],
                child: const Center(
                  child: Icon(Icons.image_not_supported, color: Colors.grey),
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: defaultPadding / 4,
        ),
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
        const SizedBox(
          height: defaultPadding / 4,
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
