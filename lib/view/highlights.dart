import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/builder/skill_builder.dart';
import 'package:portfolio_website/widgets/assets.dart';
import 'package:portfolio_website/widgets/colors.dart';
import 'package:portfolio_website/widgets/text_theme.dart';

class Highlights extends StatelessWidget {
  const Highlights({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      //height: size.height,
      //alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          FadeInRight(
            duration: const Duration(milliseconds: 1600),
            child: RichText(
              text: TextSpan(
                text: "Skills I Pretend To ",
                style: AppTheme.bodytextstyle(
                    fontWeight: FontWeight.w900,
                    size: 40,
                    color: AppColors.textcolor),
                children: [
                  TextSpan(
                    text: '"Know"',
                    style: AppTheme.nametextstyle(
                      fontWeight: FontWeight.w900,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    FadeInRight(
                      duration: const Duration(milliseconds: 1600),
                      child: RichText(
                        text: TextSpan(
                          text: "Programming Languages",
                          style: AppTheme.bodytextstyle(
                              fontWeight: FontWeight.w900,
                              size: 22,
                              color: AppColors.secondarycolor),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SkillsBuilder(),
                  ],
                ),
                Column(
                  children: [
                    FadeInRight(
                      duration: const Duration(milliseconds: 1600),
                      child: RichText(
                        text: TextSpan(
                          text: "Mobile App Development",
                          style: AppTheme.bodytextstyle(
                              fontWeight: FontWeight.w900,
                              size: 22,
                              color: AppColors.secondarycolor),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Skills2Builder(),
                    const SizedBox(
                      height: 5,
                    ),
                    FadeInRight(
                      duration: const Duration(milliseconds: 1600),
                      child: RichText(
                        text: TextSpan(
                          text: "AI/ML",
                          style: AppTheme.bodytextstyle(
                              fontWeight: FontWeight.w900,
                              size: 22,
                              color: AppColors.secondarycolor),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Skills4Builder(),
                  ],
                ),
                Column(
                  children: [
                    FadeInRight(
                      duration: const Duration(milliseconds: 1600),
                      child: RichText(
                        text: TextSpan(
                          text: "Database",
                          style: AppTheme.bodytextstyle(
                              fontWeight: FontWeight.w900,
                              size: 22,
                              color: AppColors.secondarycolor),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Skills3Builder(),
                    const SizedBox(
                      height: 5,
                    ),
                    FadeInRight(
                      duration: const Duration(milliseconds: 1600),
                      child: RichText(
                        text: TextSpan(
                          text: "Other",
                          style: AppTheme.bodytextstyle(
                              fontWeight: FontWeight.w900,
                              size: 22,
                              color: AppColors.secondarycolor),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Skills5Builder(),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: size.width * 0.4,
              ),
              FadeInLeft(
                duration: const Duration(milliseconds: 1600),
                child: RichText(
                  text: TextSpan(
                    text: "Experience",
                    style: AppTheme.bodytextstyle(
                        fontWeight: FontWeight.w900,
                        size: 50,
                        color: AppColors.textcolor),
                  ),
                ),
              ),

              // SizedBox(
              //   width: 1000,
              // ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: FadeInRight(
                      duration: const Duration(milliseconds: 1600),
                      child: Transform(
                        transform: Matrix4.identity()..scale(-1.0, 1.0, 1.0),
                        alignment: Alignment.center,
                        child: Image.asset(
                          AppAssets.profile3,
                          height: 200,
                          width: 200,
                        ),
                      )),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                left: size.width * 0.05, right: size.width * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "TRUSTIQUE ASSIST PRIVATE LIMITED",
                  style: AppTheme.bodytextstyle(
                      fontWeight: FontWeight.w900,
                      color: AppColors.secondarycolor),
                ),

                Row(
                  children: [
                    Text(
                      "Flutter Developer Internship",
                      style: AppTheme.headertextstyle(
                          fontWeight: FontWeight.w700,
                          color: AppColors.textcolor),
                    ),
                    const Spacer(),
                    Text(
                      "October'23 - December'23",
                      style: AppTheme.headertextstyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.textcolor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                // Text(
                //   '• Developed and polished UI elements for a mobile app using Flutter.\n '
                //   ' Contributed to enhancing the overall user experience through intuitive and visually appealing design.\n '
                //   ' Gained valuable experience in UI development for Flutter applications.\n'
                //   '• Collaborated with a team of 3-5 members to implement the Firebase database integration.\n',
                //   style: AppTheme.headertextstyle(
                //       fontWeight: FontWeight.w500,
                //       color: AppColors.darkBackgroundColor,
                //       size: 20),
                // ),
              ],
            ),
          ),
          const SizedBox(
            height: 45,
          ),
        ],
      ),
    );
  }
}
