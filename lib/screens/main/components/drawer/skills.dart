import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screens/main/components/drawer/skill.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Skills',
            style: TextStyle(color: Colors.white),
          ),
        ),
        SkillText(skill: 'Python, C#, Dart, Go, HTML, CSS, JS'),
        SkillText(skill: 'Flask, Flutter'),
        SkillText(skill: 'Networking, Cyber Security'),
        SkillText(skill: 'Git, Github'),
        SkillText(skill: 'Arduino UNO,  ESP32, Raspberry Pi 4'),
      ],
    );
  }
}
