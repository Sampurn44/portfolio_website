import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/animation/profile_photo.dart';
import 'package:portfolio_website/view/about_me.dart';
import 'package:portfolio_website/view/contact_us.dart';
import 'package:portfolio_website/view/highlights.dart';
import 'package:portfolio_website/view/projects.dart';
import 'package:portfolio_website/widgets/assets.dart';
import 'package:portfolio_website/widgets/colors.dart';
import 'package:portfolio_website/widgets/text_theme.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backgoundcolor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
              // left: size.width * 0.1,
              // right: size.width * 0.035,
              top: size.height * 0.2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FadeInDown(
                        duration: const Duration(milliseconds: 1200),
                        child: Text(
                          "Hi! I am ",
                          style: AppTheme.bodytextstyle(
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.001,
                      ),
                      FadeInRight(
                        duration: const Duration(milliseconds: 1400),
                        child: Text(
                          "Sampurn Chouksey",
                          style: AppTheme.nametextstyle(
                              fontWeight: FontWeight.w900, size: 45),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.001,
                      ),
                      FadeInLeft(
                        duration: const Duration(milliseconds: 1400),
                        child: Row(
                          children: [
                            Text(
                              "And I'm a ",
                              style: AppTheme.bodytextstyle(
                                  fontWeight: FontWeight.w900, size: 40),
                            ),
                            AnimatedTextKit(
                              animatedTexts: [
                                TyperAnimatedText(
                                  'Flutter Developer',
                                  textStyle: AppTheme.bodytextstyle(
                                      fontWeight: FontWeight.w900,
                                      size: 40,
                                      color: AppColors.textcolor),
                                ),
                                TyperAnimatedText(
                                  'ML enthusiast',
                                  textStyle: AppTheme.bodytextstyle(
                                      fontWeight: FontWeight.w900,
                                      size: 40,
                                      color: AppColors.textcolor),
                                ),
                                TyperAnimatedText(
                                  'C++ Coder',
                                  textStyle: AppTheme.bodytextstyle(
                                      fontWeight: FontWeight.w900,
                                      size: 40,
                                      color: AppColors.textcolor),
                                ),
                              ],
                              isRepeatingAnimation: true,
                              repeatForever: true,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.5,
                        child: FadeInDown(
                          duration: const Duration(milliseconds: 1600),
                          child: Text(
                            'Aspiring to excel as a Flutter & Machine Learning Developer, I bring a strong foundation in C++,'
                            'Dart, and Python. Proficient in mobile app development and front-end technologies, I aspire to craft'
                            ' innovative cross-platform apps and leverage machine learning algorithms. Committed to driving results through my skills and passion for technology.',
                            style: AppTheme.bodytextstyle(
                                size: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1600),
                        child: Row(
                          children: [
                            socialmediaicon(AppAssets.github, onTap: () {}),
                            const SizedBox(
                              width: 12,
                            ),
                            socialmediaicon(AppAssets.instagram, onTap: () {}),
                            const SizedBox(
                              width: 12,
                            ),
                            socialmediaicon(AppAssets.linkedin, onTap: () {}),
                            const SizedBox(
                              width: 12,
                            ),
                            socialmediaicon(AppAssets.twitter, onTap: () {}),
                            const SizedBox(
                              width: 12,
                            ),
                            socialmediaicon(AppAssets.medium, onTap: () {})
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      FadeInUp(
                        duration: const Duration(milliseconds: 1800),
                        child: materailbuttonforresume(
                          onTap: () {},
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: size.width * 0.035,
                  ),
                  ProfilePhotoAnimation(
                      backgroundcolor: AppColors.containercolor,
                      ImagePath: AppAssets.profile1),
                ],
              ),
              const SizedBox(
                height: 190,
              ),
              const AboutMe(),
              const SizedBox(
                height: 40,
              ),
              const Highlights(),
              const Project(),
              const ContactUs(),
            ],
          ),
        ),
      ),
    );
  }

  MaterialButton materailbuttonforresume({required VoidCallback onTap}) {
    return MaterialButton(
      onPressed: onTap,
      color: AppColors.containercolor,
      elevation: 6,
      focusElevation: 12,
      splashColor: const Color.fromARGB(255, 4, 231, 121),
      shape: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(12),
      ),
      hoverColor: AppColors.backgoundcolor,
      height: 55,
      minWidth: 130,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Text(
          "Download Resume",
          style: AppTheme.bodytextstyle(
              fontWeight: FontWeight.w800, color: AppColors.secondarycolor),
        ),
      ),
    );
  }
}

AvatarGlow socialmediaicon(String imagePath, {required VoidCallback onTap}) {
  return AvatarGlow(
    glowRadiusFactor: 0.3,
    startDelay: const Duration(milliseconds: 1500),
    glowColor: AppColors.containercolor,
    glowShape: BoxShape.circle,
    curve: Curves.fastEaseInToSlowEaseOut,
    child: CircleAvatar(
      maxRadius: 22,
      backgroundColor: AppColors.backgoundcolor,
      child: Ink(
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
            //border: Border.all(color: AppColors.secondarycolor, width: 0),
            color: AppColors.backgoundcolor,
            shape: BoxShape.circle),
        child: Padding(
          padding: const EdgeInsets.all(6.9),
          child: InkWell(
            borderRadius: BorderRadius.circular(500.0),
            hoverColor: AppColors.containercolor,
            splashColor: AppColors.secondarycolor,
            onTap: onTap,
            radius: 50,
            child: Image.asset(
              imagePath,
              width: 10,
              height: 12,
              color: AppColors.secondarycolor,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    ),
  );
}
