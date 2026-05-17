import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_portfolio/constant.dart';

class ContactIcon extends StatelessWidget {
  const ContactIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      child: Row(
        children: [
          const Spacer(),
          IconButton(
              onPressed: () {
                launchUrl(Uri.parse('https://linkedin.com/in/xu-jiawei-nic'));
              },
              icon: SvgPicture.asset('assets/icons/linkedin.svg')),
          const Spacer(),
          IconButton(
              onPressed: () {
                launchUrl(Uri.parse('https://github.com/APandamonium1'));
              },
              icon: SvgPicture.asset('assets/icons/github.svg')),
          const Spacer(),
          IconButton(
              onPressed: () {
                launchUrl(Uri.parse('mailto:jiawei709.official@gmail.com'));
              },
              icon: SvgPicture.asset(
                'assets/icons/email.svg',
                width: 20,
                height: 20,
                colorFilter:
                    const ColorFilter.mode(Color(0xFF8C8C8E), BlendMode.srcIn),
              )),
          const Spacer(),
          IconButton(
              onPressed: () {
                launchUrl(Uri.parse('https://wa.me/6597717202'));
              },
              // icon uses #8C8C8E
              icon: SvgPicture.asset('assets/icons/whatsapp.svg',
                  width: 20,
                  height: 20,
                  colorFilter: const ColorFilter.mode(
                      Color(0xFF8C8C8E), BlendMode.srcIn))),
          const Spacer(),
          IconButton(
              onPressed: () {
                launchUrl(Uri.parse('https://t.me/apandamonium'));
              },
              icon: SvgPicture.asset('assets/icons/telegram.svg',
                  width: 20,
                  height: 20,
                  colorFilter: const ColorFilter.mode(
                      Color(0xFF8C8C8E), BlendMode.srcIn))),
          const Spacer(),
        ],
      ),
    );
  }
}
