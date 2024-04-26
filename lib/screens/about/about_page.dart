import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view_model/responsive.dart';
import 'package:flutter_portfolio/constant.dart';
import 'package:flutter_portfolio/screens/certifications/components/title_text.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          if (Responsive.isLargeMobile(context))
            const SizedBox(
              height: defaultPadding,
            ),
          const TitleText(prefix: 'About ', title: 'Me'),
          const SizedBox(
            height: defaultPadding,
          ),
        ],
      ),
    );
  }
}
