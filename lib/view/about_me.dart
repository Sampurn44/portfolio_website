import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/animation/profile_photo.dart';
import 'package:portfolio_website/helper/helper_class.dart';
import 'package:portfolio_website/widgets/assets.dart';
import 'package:portfolio_website/widgets/colors.dart';
import 'package:portfolio_website/widgets/text_theme.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
        mobile: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              children: [
                buildProiflePhoto(),
                SizedBox(
                  width: 25,
                ),
                buildAboutMe(size),
              ],
            ),
          ],
        ),
        tablet: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            buildProiflePhoto(),
            SizedBox(
              height: size.height * 0.05,
            ),
            buildAboutMe(size),
          ],
        ),
        desktop: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          //  mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildProiflePhoto(),
            SizedBox(
              width: size.width * 0.05,
            ),
            Expanded(child: buildAboutMe(size)),
            SizedBox(
              width: size.width * 0.05,
            ),
          ],
        ),
        paddingWidth: size.width * 0.1,
        bgColor: AppColors.creamyBackground);

    // Container(
    //     height: size.height,
    //     width: size.width,
    //     color: AppColors.creamyBackground,
    //     child: Padding(
    //       padding: EdgeInsets.only(
    //         left: size.width * 0.05,
    //         right: size.width * 0.035,
    //         //top: size.height * 0.2
    //       ),
    //       child:
    //     ));
  }

  FadeInRight buildProiflePhoto() {
    return FadeInRight(
      duration: Duration(milliseconds: 1600),
      child: ProfilePhotoAnimation(
          backgroundcolor: AppColors.secondarycolor,
          ImagePath: AppAssets.profile2),
    );
  }

  Column buildAboutMe(Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FadeInRight(
          duration: const Duration(milliseconds: 1600),
          child: RichText(
            text: TextSpan(
              text: "About ",
              style: AppTheme.bodytextstyle(
                  fontWeight: FontWeight.w900,
                  size: 40,
                  color: AppColors.textcolor),
              children: [
                TextSpan(
                  text: 'Me',
                  style: AppTheme.bodytextstyle(
                    fontWeight: FontWeight.w900,
                    size: 40,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        FadeInRight(
          duration: Duration(milliseconds: 1800),
          child: Text(
            "Flutter Developer & ML Developer",
            style: AppTheme.portfoliotextstyle(
                fontWeight: FontWeight.w800,
                color: AppColors.secondarycolor,
                size: 50),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        FadeInDown(
          duration: Duration(milliseconds: 2000),
          child: Text(
            'In my pursuit of excelling as a versatile Flutter and Machine Learning Developer, I proudly bring to the table a robust'
            'foundation in prominent programming languages, including C++, Dart, and Python. Leveraging my adeptness in mobile app development'
            ' and comprehensive knowledge of front-end technologies, my overarching goal is to orchestrate the creation of groundbreaking '
            'cross-platform applications while seamlessly integrating advanced machine learning algorithms. My commitment to driving impactful results'
            ' is deeply rooted in a fusion of skillful expertise and an unwavering passion for technology. Within this dynamic realm, '
            'I am resolute in my dedication to not only meet but exceed the ever-evolving expectations,'
            'contributing to the forefront of innovation in the symbiotic landscape of mobile development and machine learning.',
            style: AppTheme.bodytextstyle(
                size: 17,
                fontWeight: FontWeight.w500,
                color: AppColors.textcolor),
          ),
        ),
      ],
    );
  }
}
