import 'package:flutter/material.dart';
import 'package:portfolio_website/builder/skill_builder.dart';
import 'package:portfolio_website/helper/helper_class.dart';
import 'package:portfolio_website/model/skills.dart';
import 'package:portfolio_website/widgets/assets.dart';
import 'package:portfolio_website/widgets/colors.dart';
import 'package:portfolio_website/widgets/text_theme.dart';
import 'package:animate_do/animate_do.dart';

class Highlights extends StatelessWidget {
  const Highlights({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: buildMobileLayout(size),
      tablet: buildTabletLayout(size),
      desktop: buildDesktopLayout(size),
      paddingWidth: 0.0,
      bgColor: AppColors.backgoundcolor,
    );
  }

  Widget buildMobileLayout(Size size) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // const SizedBox(height: 10),
        buildKnowText(),
        const SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(vertical: size.height * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  buildSkillCategory("Programming Languages",
                      SkillsBuilder(skills: SkillsList.skills)),
                ],
              ),
              Column(
                children: [
                  buildSkillCategory("Mobile App Development",
                      SkillsBuilder(skills: Skills2List.skills)),
                  const SizedBox(height: 5),
                  buildSkillCategory(
                      "AI/ML", SkillsBuilder(skills: Skills3List.skills)),
                ],
              ),
              Column(
                children: [
                  buildSkillCategory(
                      "Database", SkillsBuilder(skills: Skills4List.skills)),
                  const SizedBox(height: 5),
                  buildSkillCategory(
                      "Other", SkillsBuilder(skills: Skills5List.skills)),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: size.height * 0.4),
            Align(
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
                ),
              ),
            ),
            FadeInLeft(
              duration: const Duration(milliseconds: 1600),
              child: RichText(
                text: TextSpan(
                  text: "Experience",
                  style: AppTheme.bodytextstyle(
                    fontWeight: FontWeight.w900,
                    size: 50,
                    color: AppColors.textcolor,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 45),
        Padding(
          padding: EdgeInsets.only(
            left: size.width * 0.05,
            right: size.width * 0.05,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "TRUSTIQUE ASSIST PRIVATE LIMITED",
                style: AppTheme.bodytextstyle(
                  fontWeight: FontWeight.w900,
                  color: AppColors.secondarycolor,
                ),
              ),
              Text(
                "Flutter Developer Internship",
                style: AppTheme.headertextstyle(
                  fontWeight: FontWeight.w700,
                  color: AppColors.textcolor,
                ),
              ),
              // Text(
              //   "October'23 - December'23",
              //   style: AppTheme.headertextstyle(
              //     fontWeight: FontWeight.w500,
              //     color: AppColors.textcolor,
              //   ),
              // ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildTabletLayout(Size size) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 10),
        buildKnowText(),
        const SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  buildSkillCategory("Programming Languages",
                      SkillsBuilder(skills: SkillsList.skills)),
                ],
              ),
              Column(
                children: [
                  buildSkillCategory("Mobile App Development",
                      SkillsBuilder(skills: Skills2List.skills)),
                  const SizedBox(height: 5),
                  buildSkillCategory(
                      "AI/ML", SkillsBuilder(skills: Skills3List.skills)),
                ],
              ),
              Column(
                children: [
                  buildSkillCategory(
                      "Database", SkillsBuilder(skills: Skills4List.skills)),
                  const SizedBox(height: 5),
                  buildSkillCategory(
                      "Other", SkillsBuilder(skills: Skills5List.skills)),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 45),
        buildExperienceRow(size),
      ],
    );
  }

  Widget buildDesktopLayout(Size size) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // const SizedBox(height: 10),
        buildKnowText(),
        const SizedBox(height: 20),
        buildSkillsColumn(size),
        const SizedBox(height: 5),
        buildExperienceRow(size),
        const SizedBox(height: 45),
      ],
    );
  }

  FadeInRight buildKnowText() {
    return FadeInRight(
      duration: const Duration(milliseconds: 1600),
      child: RichText(
        text: TextSpan(
          text: "Skills I Pretend To ",
          style: AppTheme.bodytextstyle(
            fontWeight: FontWeight.w900,
            size: 40,
            color: AppColors.textcolor,
          ),
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
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget buildSkillsColumn(Size size) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              buildSkillCategory("Programming Languages",
                  SkillsBuilder(skills: SkillsList.skills)),
            ],
          ),
          Column(
            children: [
              buildSkillCategory("Mobile App Development",
                  SkillsBuilder(skills: Skills2List.skills)),
              const SizedBox(height: 5),
              buildSkillCategory(
                  "AI/ML", SkillsBuilder(skills: Skills4List.skills)),
            ],
          ),
          Column(
            children: [
              buildSkillCategory(
                  "Database", SkillsBuilder(skills: Skills3List.skills)),
              const SizedBox(height: 5),
              buildSkillCategory(
                  "Other", SkillsBuilder(skills: Skills5List.skills)),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildSkillCategory(String category, Widget skillsWidget) {
    return Column(
      children: [
        FadeInRight(
          duration: const Duration(milliseconds: 1600),
          child: RichText(
            text: TextSpan(
              text: category,
              style: AppTheme.bodytextstyle(
                fontWeight: FontWeight.w900,
                size: 22,
                color: AppColors.secondarycolor,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        skillsWidget,
      ],
    );
  }

  Widget buildExperienceRow(Size size) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: size.width * 0.4),
            FadeInLeft(
              duration: const Duration(milliseconds: 1600),
              child: RichText(
                text: TextSpan(
                  text: "Experience",
                  style: AppTheme.bodytextstyle(
                    fontWeight: FontWeight.w900,
                    size: 50,
                    color: AppColors.textcolor,
                  ),
                ),
              ),
            ),
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
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            left: size.width * 0.05,
            right: size.width * 0.05,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "TRUSTIQUE ASSIST PRIVATE LIMITED",
                style: AppTheme.bodytextstyle(
                  fontWeight: FontWeight.w900,
                  color: AppColors.secondarycolor,
                ),
              ),
              Row(
                children: [
                  Text(
                    "Flutter Developer Internship",
                    style: AppTheme.headertextstyle(
                      fontWeight: FontWeight.w700,
                      color: AppColors.textcolor,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "October'23 - December'23",
                    style: AppTheme.headertextstyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.textcolor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
