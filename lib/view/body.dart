import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio_website/animation/profile_photo.dart';
import 'package:portfolio_website/helper/helper_class.dart';
import 'package:portfolio_website/view/about_me.dart';
import 'package:portfolio_website/view/contact_me.dart';
import 'package:portfolio_website/view/footer.dart';
import 'package:portfolio_website/view/highlights.dart';
import 'package:portfolio_website/view/projects.dart';
import 'package:portfolio_website/widgets/assets.dart';
import 'package:portfolio_website/widgets/colors.dart';
import 'package:portfolio_website/widgets/text_theme.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final socialMedia = <String>[
    AppAssets.github,
    AppAssets.instagram,
    AppAssets.linkedin,
    AppAssets.twitter,
    AppAssets.medium
  ];
  var SocialBI;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        children: [
          buildHomeScreenInfo(size),
          SizedBox(
            height: 25,
          ),
          const ProfilePhotoAnimation(),
        ],
      ),
      tablet: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: buildHomeScreenInfo(size)),
          Expanded(child: const ProfilePhotoAnimation()),
        ],
      ),
      desktop: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(child: buildHomeScreenInfo(size)),
          //     SizedBox(width: size.width * 0.2),
          //  Expanded(child:
          const ProfilePhotoAnimation()
          //),
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: Colors.transparent,
    );
  }

  Column buildHomeScreenInfo(Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      //mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        FadeInDown(
          duration: const Duration(milliseconds: 1200),
          child: Text(
            "Hi! I am ",
            style:
                AppTheme.bodytextstyle(fontWeight: FontWeight.w700, size: 24),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        FadeInRight(
          duration: const Duration(milliseconds: 1400),
          child: Text(
            "Sampurn Chouksey",
            style:
                AppTheme.nametextstyle(fontWeight: FontWeight.w900, size: 36),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        FadeInLeft(
          duration: const Duration(milliseconds: 1400),
          child: Row(
            children: [
              Text(
                "And I'm a ",
                style: AppTheme.bodytextstyle(
                    fontWeight: FontWeight.w900, size: 24),
              ),
              AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText(
                    'Flutter Developer',
                    textStyle: AppTheme.bodytextstyle(
                        fontWeight: FontWeight.w900,
                        size: 24,
                        color: AppColors.textcolor),
                  ),
                  TyperAnimatedText(
                    'ML enthusiast',
                    textStyle: AppTheme.bodytextstyle(
                        fontWeight: FontWeight.w900,
                        size: 24,
                        color: AppColors.textcolor),
                  ),
                  TyperAnimatedText(
                    'C++ Coder',
                    textStyle: AppTheme.bodytextstyle(
                        fontWeight: FontWeight.w900,
                        size: 24,
                        color: AppColors.textcolor),
                  ),
                ],
                isRepeatingAnimation: true,
                repeatForever: true,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        // SizedBox(
        //   width: size.height * 0.5,
        //   child:
        FadeInDown(
          duration: const Duration(milliseconds: 1600),
          child: Text(
            'Aspiring to excel as a Flutter & Machine Learning Developer, I bring a strong foundation in C++,'
            'Dart, and Python. Proficient in mobile app development and front-end technologies, I aspire to craft'
            ' innovative cross-platform apps and leverage machine learning algorithms. Committed to driving results through my skills and passion for technology.',
            style:
                AppTheme.bodytextstyle(size: 15, fontWeight: FontWeight.w500),
            //textAlign: TextAlign.justify,
          ),
        ),
        //),
        const SizedBox(
          height: 22,
        ),
        FadeInUp(
            duration: const Duration(milliseconds: 1600),
            child: SizedBox(
              height: 50,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, child) => SizedBox(
                  width: 12,
                ),
                itemCount: socialMedia.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    onHover: (value) {
                      setState(() {
                        if (value) {
                          SocialBI = index;
                        } else {
                          SocialBI = null;
                        }
                      });
                    },
                    borderRadius: BorderRadius.circular(550.0),
                    hoverColor: AppColors.secondarycolor,
                    splashColor: AppColors.containercolor,
                    child: socialmediaicon(socialMedia[index],
                        onHover: SocialBI == index ? true : false),
                  );
                },
              ),
            )
            // Row(
            //   children: [
            //     socialmediaicon(AppAssets.github, onTap: () {}),
            //     const SizedBox(
            //       width: 12,
            //     ),
            //     socialmediaicon(AppAssets.instagram, onTap: () {}),
            //     const SizedBox(
            //       width: 12,
            //     ),
            //     socialmediaicon(AppAssets.linkedin, onTap: () {}),
            //     const SizedBox(
            //       width: 12,
            //     ),
            //     socialmediaicon(AppAssets.twitter, onTap: () {}),
            //     const SizedBox(
            //       width: 12,
            //     ),
            //     socialmediaicon(AppAssets.medium, onTap: () {})
            //   ],
            // ),
            ),
        const SizedBox(
          height: 18,
        ),
        FadeInUp(
          duration: const Duration(milliseconds: 1800),
          child: materailbuttonforresume(
            onTap: () {},
          ),
        ),

        // ProfilePhotoAnimation(
        //     backgroundcolor: AppColors.containercolor,
        //     ImagePath: AppAssets.profile1),
      ],
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

AvatarGlow socialmediaicon(String imagePath, {required bool onHover}) {
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
        width: 45,
        height: 45,
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
            //onTap: onTap,
            radius: 50,
            child: Image.asset(
              imagePath,
              width: 10,
              height: 12,
              color:
                  onHover ? AppColors.containercolor : AppColors.secondarycolor,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    ),
  );
}

//  Ink buildSocialButton({required String asset, required bool hover}) {
//     return Ink(
//       width: 45,
//       height: 45,
//       decoration: BoxDecoration(
//         border: Border.all(color: AppColors.secondarycolor, width: 2.0),
//         color: AppColors.backgoundcolor,
//         shape: BoxShape.circle,
//       ),
//       padding: const EdgeInsets.all(6),
//       child: Image.asset(
//         asset,
//         width: 10,
//         height: 12,
//         color: hover ? AppColors.bgColor : AppColors.themeColor,
//         // fit: BoxFit.fill,
//       ),
//     );
//   }
//        LayoutBuilder(builder: (context, constraints) {
//         if (constraints.maxWidth < 768) {
//           return
//         } else {
//           return Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 //mainAxisAlignment: MainAxisAlignment.end,
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   FadeInDown(
//                     duration: const Duration(milliseconds: 1200),
//                     child: Text(
//                       "Hi! I am ",
//                       style:
//                           AppTheme.bodytextstyle(fontWeight: FontWeight.w700),
//                     ),
//                   ),
//                   SizedBox(
//                     height: size.height * 0.001,
//                   ),
//                   FadeInRight(
//                     duration: const Duration(milliseconds: 1400),
//                     child: Text(
//                       "Sampurn Chouksey",
//                       style: AppTheme.nametextstyle(
//                           fontWeight: FontWeight.w900, size: 45),
//                     ),
//                   ),
//                   SizedBox(
//                     height: size.height * 0.001,
//                   ),
//                   FadeInLeft(
//                     duration: const Duration(milliseconds: 1400),
//                     child: Row(
//                       children: [
//                         Text(
//                           "And I'm a ",
//                           style: AppTheme.bodytextstyle(
//                               fontWeight: FontWeight.w900, size: 40),
//                         ),
//                         AnimatedTextKit(
//                           animatedTexts: [
//                             TyperAnimatedText(
//                               'Flutter Developer',
//                               textStyle: AppTheme.bodytextstyle(
//                                   fontWeight: FontWeight.w900,
//                                   size: 40,
//                                   color: AppColors.textcolor),
//                             ),
//                             TyperAnimatedText(
//                               'ML enthusiast',
//                               textStyle: AppTheme.bodytextstyle(
//                                   fontWeight: FontWeight.w900,
//                                   size: 40,
//                                   color: AppColors.textcolor),
//                             ),
//                             TyperAnimatedText(
//                               'C++ Coder',
//                               textStyle: AppTheme.bodytextstyle(
//                                   fontWeight: FontWeight.w900,
//                                   size: 40,
//                                   color: AppColors.textcolor),
//                             ),
//                           ],
//                           isRepeatingAnimation: true,
//                           repeatForever: true,
//                         )
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     width: size.width * 0.5,
//                     child: FadeInDown(
//                       duration: const Duration(milliseconds: 1600),
//                       child: Text(
//                         'Aspiring to excel as a Flutter & Machine Learning Developer, I bring a strong foundation in C++,'
//                         'Dart, and Python. Proficient in mobile app development and front-end technologies, I aspire to craft'
//                         ' innovative cross-platform apps and leverage machine learning algorithms. Committed to driving results through my skills and passion for technology.',
//                         style: AppTheme.bodytextstyle(
//                             size: 15, fontWeight: FontWeight.w500),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(
//                     height: 22,
//                   ),
//                   FadeInUp(
//                       duration: const Duration(milliseconds: 1600),
//                       child: SizedBox(
//                         height: 50,
//                         child: ListView.separated(
//                           scrollDirection: Axis.horizontal,
//                           separatorBuilder: (context, child) => SizedBox(
//                             width: 12,
//                           ),
//                           itemCount: socialMedia.length,
//                           shrinkWrap: true,
//                           itemBuilder: (context, index) {
//                             return InkWell(
//                               onTap: () {},
//                               onHover: (value) {
//                                 setState(() {
//                                   if (value) {
//                                     SocialBI = index;
//                                   } else {
//                                     SocialBI = null;
//                                   }
//                                 });
//                               },
//                               borderRadius: BorderRadius.circular(550.0),
//                               hoverColor: AppColors.secondarycolor,
//                               splashColor: AppColors.containercolor,
//                               child: socialmediaicon(socialMedia[index],
//                                   onHover: SocialBI == index ? true : false),
//                             );
//                           },
//                         ),
//                       )
//                       // Row(
//                       //   children: [
//                       //     socialmediaicon(AppAssets.github, onTap: () {}),
//                       //     const SizedBox(
//                       //       width: 12,
//                       //     ),
//                       //     socialmediaicon(AppAssets.instagram, onTap: () {}),
//                       //     const SizedBox(
//                       //       width: 12,
//                       //     ),
//                       //     socialmediaicon(AppAssets.linkedin, onTap: () {}),
//                       //     const SizedBox(
//                       //       width: 12,
//                       //     ),
//                       //     socialmediaicon(AppAssets.twitter, onTap: () {}),
//                       //     const SizedBox(
//                       //       width: 12,
//                       //     ),
//                       //     socialmediaicon(AppAssets.medium, onTap: () {})
//                       //   ],
//                       // ),
//                       ),
//                   const SizedBox(
//                     height: 22,
//                   ),
//                   FadeInUp(
//                     duration: const Duration(milliseconds: 1800),
//                     child: materailbuttonforresume(
//                       onTap: () {},
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 width: 30,
//               ),
//               Expanded(
//                 child: SizedBox(
//                   width: double.infinity,
//                   child: ProfilePhotoAnimation(
//                     backgroundcolor: AppColors.containercolor,
//                     ImagePath: AppAssets.profile1,
//                   ),
//                 ),
//               ),
//             ],
//           );
//         }
//       }),
