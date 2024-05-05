import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constant.dart';
import 'package:flutter_portfolio/view_model/controller.dart';
import 'package:flutter_portfolio/screens/main/components/navigation_bar.dart';
import 'package:flutter_portfolio/view_model/responsive.dart';
import 'package:flutter_portfolio/screens/main/components/drawer/drawer.dart';
import 'package:flutter_portfolio/screens/main/components/navigation_button_list.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class MainPage extends StatelessWidget {
  const MainPage({super.key, required this.pages});
  final List<Widget> pages;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      body: Center(
        child: Column(
          children: [
            kIsWeb && !Responsive.isLargeMobile(context)
                ? const SizedBox(
                    height: defaultPadding * 2,
                  )
                : const SizedBox(
                    height: defaultPadding / 2,
                  ),
            const SizedBox(
              height: 80,
              child: TopNavigationBar(),
            ),
            if (Responsive.isLargeMobile(context))
              const Row(
                children: [Spacer(), NavigationButtonList(), Spacer()],
              ),
            Expanded(
              flex: 9,
              child: PageView(
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                controller: controller,
                children: [...pages],
              ),
            )
          ],
        ),
      ),
    );
  }
}
