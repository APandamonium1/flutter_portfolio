import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constant.dart';
import 'package:flutter_portfolio/screens/main/components/drawer/drawer_image.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: bgColor,
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            const DrawerImage(),
            const Spacer(),
            Text(
              'Jiawei',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(
              height: defaultPadding / 4,
            ),
            const Text(
              'Year 3 Diploma in Cybersecurity and\nDigital Forensics Student',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
