import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
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
                left: size.width * 0.2,
                right: size.width * 0.2,
                top: size.height * 0.2),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hii! I am ",
                          style: AppTheme.bodytextstyle(
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: size.height * 0.001,
                        ),
                        Text(
                          "Sampurn Chouksey",
                          style: AppTheme.nametextstyle(
                              fontWeight: FontWeight.w900, size: 45),
                        ),
                        SizedBox(
                          height: size.height * 0.001,
                        ),
                        Row(
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
                        SizedBox(
                          width: size.width * 0.5,
                          child: Text(
                            'Aspiring to excel as a Flutter & Machine Learning Developer, I bring a strong foundation in C++,'
                            'Dart, and Python. Proficient in mobile app development and front-end technologies, I aspire to craft'
                            ' innovative cross-platform apps and leverage machine learning algorithms. Committed to driving results through my skills and passion for technology.',
                            style: AppTheme.bodytextstyle(
                                size: 15, fontWeight: FontWeight.w500),
                          ),
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        Row(
                          children: [
                            SocialMediaIcon(AppAssets.github),
                            const SizedBox(
                              width: 12,
                            ),
                            SocialMediaIcon(AppAssets.instagram),
                            const SizedBox(
                              width: 12,
                            ),
                            SocialMediaIcon(AppAssets.linkedin),
                            const SizedBox(
                              width: 12,
                            ),
                            SocialMediaIcon(AppAssets.twitter),
                            const SizedBox(
                              width: 12,
                            ),
                            SocialMediaIcon(AppAssets.medium)
                          ],
                        ),
                        const SizedBox(
                          height: 22,
                        ),
                        MaterialButton(
                          onPressed: () {},
                          color: AppColors.backgoundcolor,
                          elevation: 6,
                          focusElevation: 12,
                          splashColor: const Color.fromARGB(255, 4, 231, 121),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 10),
                            child: Text(
                              "Download Resume",
                              style: AppTheme.bodytextstyle(
                                  fontWeight: FontWeight.w800,
                                  color: AppColors.secondarycolor),
                            ),
                          ),
                          shape: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          hoverColor: AppColors.containercolor,
                          height: 55,
                          minWidth: 130,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  AvatarGlow SocialMediaIcon(String ImagePath) {
    return AvatarGlow(
      glowRadiusFactor: 0.20,
      startDelay: const Duration(milliseconds: 1000),
      glowColor: AppColors.secondarycolor,
      glowShape: BoxShape.circle,
      curve: Curves.easeInOut,
      child: CircleAvatar(
        maxRadius: 22,
        backgroundColor: AppColors.textcolor,
        child: CircleAvatar(
          maxRadius: 20,
          backgroundColor: AppColors.backgoundcolor,
          child: Image.asset(
            ImagePath,
            width: 20,
            height: 24,
            color: AppColors.secondarycolor,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
