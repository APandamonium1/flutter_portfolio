import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view_model/responsive.dart';
import 'package:flutter_portfolio/screens/intro/components/side_menu_button.dart';
import 'package:flutter_portfolio/screens/main/components/connect_button.dart';
import 'package:flutter_portfolio/constant.dart';
import 'navigation_button_list.dart';
import 'package:flutter_portfolio/view_model/controller.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            // padding: const EdgeInsets.only(left: defaultPadding),
            child: !Responsive.isLargeMobile(context)
                ? InkWell(
                    onTap: () {
                      controller.animateToPage(0,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    },
                    child: Image.asset('assets/images/icon.png'),
                  )
                : MenuButton(
                    onTap: () => Scaffold.of(context).openDrawer(),
                  ),
          ),
          const Spacer(
            flex: 2,
          ),
          if (!Responsive.isLargeMobile(context)) const NavigationButtonList(),
          const Spacer(
            flex: 2,
          ),
          const ConnectButton(),
          const Spacer(),
        ],
      ),
    );
  }
}
