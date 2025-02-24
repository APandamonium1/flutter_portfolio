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
                /// **School Name**
                Text(
                  educationList[index].school.toUpperCase(),
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
                    /// **Year**
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

                /// **Description**
                Text.rich(
                  TextSpan(
                    text: educationList[index].description,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.white70,
                        ),
                  ),
                  softWrap: true, // Ensures auto line wrapping
                ),
                const SizedBox(
                  height: defaultPadding / 2,
                ),

                /// **Heading for Bullet Points**
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

                /// **Bullet Points with Optional Sub-Points**
                Column(
                  children: educationList[index]
                      .bulletPoints
                      .map((point) => Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const Text("• ",
                                        style: TextStyle(color: Colors.white)),
                                    Text(
                                      point.text,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(color: Colors.white70),
                                      softWrap: true,
                                    ),
                                  ],
                                ),
                                // Sub-Bullet Points (if available)
                                if (point.subPoints != null &&
                                    point.subPoints!.isNotEmpty)
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: point.subPoints!
                                          .map(
                                            (subPoint) => Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text("◦ ",
                                                    style: TextStyle(
                                                        color: Colors
                                                            .white70)), // Smaller Bullet Symbol
                                                Expanded(
                                                  child: Text(
                                                    subPoint,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodySmall!
                                                        .copyWith(
                                                          color: Colors.white60,
                                                        ),
                                                    softWrap: true,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: defaultPadding / 3,
                                                ),
                                              ],
                                            ),
                                          )
                                          .toList(),
                                    ),
                                  ),
                                // // "More" Button
                                // Align(
                                //   alignment: Alignment.bottomRight,
                                //   child: GestureDetector(
                                //     onTap: () {
                                //       // TODO: Implement show more functionality
                                //     },
                                //     child: Text(
                                //       "More",
                                //       style: TextStyle(
                                //         color: Colors.blue,
                                //         decoration: TextDecoration.underline,
                                //         fontSize: Theme.of(context)
                                //             .textTheme
                                //             .bodySmall!
                                //             .fontSize,
                                //       ),
                                //     ),
                                //   ),
                                // ),
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
