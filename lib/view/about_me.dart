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
            "Hey folks,I'm Sampurn Chouksey, currently on a quest through the tech realms as a B.Tech explorer at Jaypee University of Engineering and Technology, Guna. By day,"
            " I'm the wizard behind Flutter, crafting apps smoother than a salsa dancer's moves. As the sun sets, I dive into the captivating landscapes of Artificial Intelligence and Machine Learning."
            "In this grand adventure of tech, I'm pursuing a B.Tech in Computer Science and Engineering with a specialization in AI/ML. Picture it as crafting code that dances to its own beat—a symphony of logic and creativity."
            "I believe that programming should be a joyful odyssey, filled with surprises and discoveries. So, whether you're a fellow coding wizard, a tech aficionado, or just stumbled upon this digital haven, welcome! Let's turn this journey into a tech fiesta where innovation meets a sprinkle of laughter.",
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
