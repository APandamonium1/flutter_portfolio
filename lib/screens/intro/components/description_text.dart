import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view_model/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText(
      {super.key, required this.start, required this.end});
  final double start;
  final double end;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Text(
          'I\'m a Year 3 Diploma in Cybersecurity & Digital ${Responsive.isLargeMobile(context) ? '\n' : ''}Forensics student from ${!Responsive.isLargeMobile(context) ? '\n' : ''}Ngee Ann Polytechnic.',
          // 'I\'m a Year 3 Diploma in Cybersecurity & Digital Forensics student from Ngee Ann Polytechnic.',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey, wordSpacing: 2, fontSize: value),
        );
      },
    );
  }
}
