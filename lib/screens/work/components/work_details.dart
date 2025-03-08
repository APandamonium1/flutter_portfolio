import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_portfolio/model/work_model.dart';
import 'package:flutter_portfolio/constant.dart';
import 'package:flutter_portfolio/view_model/getx_controllers/work_controller.dart';

class WorkDetail extends StatelessWidget {
  final controller = Get.put(WorkController());
  final int index;
  WorkDetail({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onHover: (value) {
          controller.onHover(index, value);
        },
        onTap: () {},
        borderRadius: BorderRadius.circular(30),
        child: AnimatedContainer(
          padding: const EdgeInsets.all(defaultPadding),
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30), color: bgColor),
          duration: const Duration(milliseconds: 500),
          child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                /// **Job Role**
                Text(
                  workList[index].jobRole.toUpperCase(),
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: defaultPadding / 2,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// **Organisation & Date**
                    Text(
                      "${workList[index].organisationName} • ${workList[index].date}",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Colors.grey,
                          ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: defaultPadding / 2,
                ),

                /// **Job Type**
                Chip(
                  label: Text(
                    // workList[index].jobType.name.capitalizeFirst ?? '',
                    workList[index].formattedJobType,
                    style: const TextStyle(color: Colors.white),
                  ),
                  backgroundColor: _getJobTypeColor(workList[index].jobType),
                ),
                const SizedBox(
                  height: defaultPadding / 2,
                ),

                /// **Description (Bullet Points)**
                Column(
                  children: workList[index]
                      .description
                      .map((desc) => Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: [
                                const Text("• ",
                                    style: TextStyle(color: Colors.white)),
                                Expanded(
                                  child: Text(
                                    desc,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(color: Colors.white70),
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            ),
                          ))
                      .toList(),
                ),
                const SizedBox(
                  height: defaultPadding,
                )
              ])),
        ));
  }

  /// Function to get color based on job type
  Color _getJobTypeColor(JobType type) {
    switch (type) {
      case JobType.fullTime:
        return Colors.green;
      case JobType.partTime:
        return Colors.orange;
      case JobType.internship:
        return Colors.blue;
    }
  }
}
