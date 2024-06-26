import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screens/main/components/drawer/contact_icons.dart';
import 'package:flutter_portfolio/screens/main/components/drawer/personal_info.dart';
import 'package:flutter_portfolio/constant.dart';
import 'package:flutter_portfolio/screens/main/components/drawer/knowledges.dart';
import 'package:flutter_portfolio/screens/main/components/drawer/about.dart';
import 'package:flutter_portfolio/screens/main/components/drawer/my_skill.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: primaryColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const About(),
            Container(
              color: bgColor,
              child: const Padding(
                padding: EdgeInsets.all(defaultPadding / 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PersonalInfo(),
                    MySKills(),
                    Knowledges(),
                    Divider(),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    ContactIcon(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
