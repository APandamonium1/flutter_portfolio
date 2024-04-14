import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screens/intro/components/subtitle_text.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_portfolio/view_model/responsive.dart';

class CombineSubtitleText extends StatelessWidget {
  const CombineSubtitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Responsive(
          desktop: AnimatedSubtitleText(start: 30, end: 40, text: 'Tech '),
          largeMobile: AnimatedSubtitleText(start: 30, end: 25, text: 'Tech '),
          mobile: AnimatedSubtitleText(start: 25, end: 20, text: 'Tech '),
          tablet: AnimatedSubtitleText(start: 40, end: 30, text: 'Tech '),
        ),
        (kIsWeb && Responsive.isLargeMobile(context)
            ? const Responsive(
                desktop: AnimatedSubtitleText(
                    start: 30, end: 40, text: 'Enthusiast ', gradient: true),
                largeMobile: AnimatedSubtitleText(
                    start: 30, end: 25, text: 'Enthusiast ', gradient: true),
                mobile: AnimatedSubtitleText(
                    start: 25, end: 20, text: 'Enthusiast ', gradient: true),
                tablet: AnimatedSubtitleText(
                    start: 40, end: 30, text: 'Enthusiast ', gradient: true),
              )
            : ShaderMask(
                shaderCallback: (bounds) {
                  return const LinearGradient(colors: [
                    Colors.pink,
                    Colors.blue,
                  ]).createShader(bounds);
                },
                child: const Responsive(
                  desktop: AnimatedSubtitleText(
                      start: 30, end: 40, text: 'Enthusiast ', gradient: false),
                  largeMobile: AnimatedSubtitleText(
                      start: 30, end: 25, text: 'Enthusiast ', gradient: false),
                  mobile: AnimatedSubtitleText(
                      start: 25, end: 20, text: 'Enthusiast ', gradient: true),
                  tablet: AnimatedSubtitleText(
                      start: 40, end: 30, text: 'Enthusiast ', gradient: false),
                ),
              ))
      ],
    );
  }
}
