import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constant.dart';
import 'package:flutter_portfolio/screens/home/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ));
    });
  }

  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // AnimatedImageContainer(
            //   width: 100,
            //   height: 100,
            // ),
            SizedBox(
              height: defaultPadding,
            ),
            // AnimatedLoadingText(),
          ],
        ),
      ),
    );
  }
}
