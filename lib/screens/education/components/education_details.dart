import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_portfolio/model/education_model.dart';
import 'package:flutter_portfolio/constant.dart';
import 'package:flutter_portfolio/view_model/getx_controllers/education_controller.dart';

class EducationDetail extends StatelessWidget {
  final controller = Get.put(EducationController());
  final int index;
  EducationDetail({super.key, required this.index});

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
                Text(
                  educationList[index].school.toUpperCase(),
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: defaultPadding,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Text(
                    //   educationList[index].organisation,
                    //   style: const TextStyle(color: Colors.amber),
                    // ),
                    Text(
                      educationList[index].year,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Colors.grey,
                          ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: defaultPadding / 2,
                ),
                Text.rich(
                  TextSpan(
                    text: educationList[index].description,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.white70,
                        ),
                  ),
                ),
                const SizedBox(
                  height: defaultPadding / 2,
                ),
                Text(
                  "Co-Curricular Activities & Leadership Opportunities: ",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(
                  height: defaultPadding / 3,
                ),
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: educationList[index]
                      .bulletPoints
                      .map((point) => Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Row(
                              children: [
                                const Text("• ",
                                    style: TextStyle(color: Colors.white)),
                                Text(
                                  point,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(color: Colors.white70),
                                ),
                                const SizedBox(
                                  height: defaultPadding / 3,
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
}
