import 'package:flutter/material.dart';

class MyPortfolioText extends StatelessWidget {
  const MyPortfolioText({super.key, required this.start, required this.end});
  final double start;
  final double end;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return TweenAnimationBuilder(
        tween: Tween(begin: start, end: end),
        duration: const Duration(milliseconds: 200),
        builder: (context, value, child) {
          return Text('Xu Jiawei',
              // style: Theme.of(context).textTheme.headlineLarge!.copyWith(
              //     // color: Colors.white,
              //     color: Color.fromARGB(255, 145, 5, 226),
              //     fontWeight: FontWeight.w900,
              //     height: 0,
              //     fontSize: value));
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  foreground: Paint()
                    ..shader = LinearGradient(
                            colors: [
                          Colors.pink,
                          Colors.blue
                        ], // Replace with your desired colors
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight)
                        .createShader(Rect.fromLTWH(
                            0, 0, 200, 70)), // Adjust the Rect values as needed
                  fontWeight: FontWeight.w900,
                  height: 0,
                  fontSize: value));
        },
      );
    });
  }
}
