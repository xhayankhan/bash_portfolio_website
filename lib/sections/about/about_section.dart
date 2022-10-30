// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:bash_portfolio_website/components/default_button.dart';
import 'package:bash_portfolio_website/components/my_outline_button.dart';
import 'package:bash_portfolio_website/constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:html' as html;
import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: const BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              AboutTextWithSign(),
              Expanded(child: AboutSectionText(text: 'I am a Software Engineer studied at International Islamic University Islamabad. My personal interest is in the field of App Development. Currently, I am working as an App Developer specializing in Flutter; a hybrid Android and IOS App development Platform using Dart programming language. I have built more than 10 apps in Flutter throughout my journey. I love to learn new technologies and build new apps.')),
              // Expanded(
              //   child: AboutSectionText(
              //     text:
              //         "I am a Software Engineer studied at International Islamic University Islamabad, Pakistan. My personal interest is in the field of App Development.Currently, I am working as an App developer specializing in Flutter,a hybrid Android and IOS App development platform using Dart programming langugage.I have built more than 5 apps in Flutter througout my journey.",
              //   ),
              // ),
              ExperienceCard(numOfExp: "1.5"),
              // Expanded(
              //   child: AboutSectionText(
              //     text:
              //         "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
              //   ),
              // ),
            ],
          ),
          const SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                imageSrc: "assets/images/hand.png",
                text: "Hire Me!",
                press: () {
                  launchUrl(Uri(
                    scheme: 'mailto',
                    path: 'shayaniqbal515@gmail.com',
                    query: 'Hire Me',
                  ));
                },
              ),
              const SizedBox(width: kDefaultPadding * 1.5),
              DefaultButton(
                imageSrc: "assets/images/download.png",
                text: "Download CV",
                press: () {
                  html.window.open("assets/cv/Shayan's Resume.pdf", "text");
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
