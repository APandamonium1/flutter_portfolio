import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screens/main/components/drawer/knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Knowledge',
            style: TextStyle(color: Colors.white),
          ),
        ),
        KnowledgeText(knowledge: 'Python, C#, Dart, Go, HTML, CSS, JS'),
        KnowledgeText(knowledge: 'Flask, Flutter'),
        KnowledgeText(knowledge: 'Networking, Cyber Security'),
        KnowledgeText(knowledge: 'Git, Github'),
        KnowledgeText(knowledge: 'Arduino UNO,  ESP32, Raspberry Pi 4'),
      ],
    );
  }
}
