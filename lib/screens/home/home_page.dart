import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screens/main/main_page.dart';
import 'package:flutter_portfolio/screens/intro/intro.dart';
import 'package:flutter_portfolio/screens/projects/projects_page.dart';
import 'package:flutter_portfolio/screens/certifications/certs_page.dart';
import 'package:flutter_portfolio/screens/about/about_page.dart';
import 'package:flutter_portfolio/screens/work/work_page.dart';
import 'package:flutter_portfolio/screens/education/education_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainPage(pages: [
      const IntroPage(),
      AboutPage(),
      WorkPage(),
      EducationPage(),
      ProjectsPage(),
      CertsPage(),
    ]);
  }
}
