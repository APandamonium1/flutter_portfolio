import 'package:flutter/material.dart';
import 'package:flutter_portfolio/constant.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: defaultPadding / 2,
        ),
        AreaInfoText(title: 'Contact', text: '+65 97717202'),
        AreaInfoText(title: 'Email', text: 'jiawei709.official@gmail.com'),
        AreaInfoText(title: 'LinkedIn', text: 'xu-jiawei-nic'),
        AreaInfoText(title: 'Github', text: '@APandamonium1'),
        SizedBox(
          height: defaultPadding,
        ),
        Text(
          'Skills',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
