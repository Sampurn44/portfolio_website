import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/helper/helper_class.dart';
import 'package:portfolio_website/utils/link_launcher.dart';
import 'package:portfolio_website/view/footer.dart';
import 'package:portfolio_website/widgets/assets.dart';
import 'package:portfolio_website/widgets/colors.dart';
import 'package:portfolio_website/widgets/text_theme.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  List<List<String>> images = [
    [
      AppAssets.project,
      "MEMORABLE PLACE",
      "The ultimate Flutter app! Capture and save your favorite spots with photos, accessing them on Google Maps anytime using its api. Effortless location selection, automatic address detection, and secure on-device storage ensure unforgettable memories at your fingertips",
      "https://github.com/Sampurn44/favourite_place",
    ],
    [
      AppAssets.project1,
      "DIAGNO WEB",
      "Led the development of DiagnoWeb, a Django-based disease prediction app. Integrated Decision Tree, Naive Bayes, and Random Forest models for accurate predictions. Demonstrated expertise in deploying and optimizing machine learning models for practical applications.",
      "https://github.com/Sampurn44/DiagnoWeb",
    ],
    [
      AppAssets.project4,
      "PORTFOLIO WEBSITE",
      "Designed my personal portfolio using Flutter, featuring a dynamic and responsive showcase of skills and projects.",
      "https://github.com/Sampurn44/portfolio_website",
    ],
    [
      AppAssets.project,
      "MEALS-APP",
      "Meet The Meals App your go-to culinary companion! Discover a variety of dishes, plan budget-friendly meals, and access quick recipes with estimated cooking times. Save your favorites and enjoy a seamless experience with customizable filters. Elevate your culinary journey effortlessly!",
      "https://github.com/Sampurn44/meals_app",
    ],
    [
      AppAssets.project3,
      "FLAPPY BIRD",
      "Flappy Bird reimagined in Flutter! Experience the classic game with smooth controls, vibrant graphics, and addictive gameplay. Flutter Flappy Bird brings nostalgic fun to your mobile device. Flap, dodge pipes, and aim for high scores in this Flutter-powered adventure.",
      "https://github.com/Sampurn44/flappy_bird",
    ],
    [
      AppAssets.project2,
      "TRUSTIQUE",
      "This Flutter app offers seamless user authentication through Google Sign-In, real-time messaging using Firebase Firestore Also provide convenient location sharing, user search, and essential features like unread message indicators and message status.",
      "https://github.com/Sampurn44/Trustique",
    ],
  ];

  var HoverIndex;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: HelperClass(
          mobile: Column(
            mainAxisSize: MainAxisSize.min,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Image.asset(
                      AppAssets.profile4,
                      height: 150,
                      width: 150,
                    ),
                  ),
                  SizedBox(
                    width: size.height * 0.27,
                  ),
                  projecttext()
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              buildGridView(size, CrossAxisCount: 1),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          tablet: Column(
            mainAxisSize: MainAxisSize.min,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    AppAssets.profile4,
                    height: 150,
                    width: 150,
                  ),
                  SizedBox(
                    width: size.width * 0.27,
                  ),
                  projecttext()
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              buildGridView(size, CrossAxisCount: 2),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          desktop: Column(
            mainAxisSize: MainAxisSize.min,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    AppAssets.profile4,
                    height: 150,
                    width: 150,
                  ),
                  SizedBox(
                    width: size.width * 0.27,
                  ),
                  projecttext(),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              buildGridView(size, CrossAxisCount: 3),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          paddingWidth: size.width * 0.01,
          bgColor: AppColors.creamyBackground),
    );
  }

  GridView buildGridView(Size size, {required int CrossAxisCount}) {
    return GridView.builder(
        itemCount: images.length,
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05,
        ),
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: CrossAxisCount,
            mainAxisExtent: 250,
            mainAxisSpacing: 24,
            crossAxisSpacing: 20),
        itemBuilder: (context, index) {
          var image = images[index][0];

          var projectTitle = images[index][1];
          var projectDetail = images[index][2];
          String githubRepoLink = images[index][3];
          return MouseRegion(
            onEnter: (_) {
              setState(() {
                HoverIndex = index;
              });
            },
            onExit: (_) {
              setState(() {
                HoverIndex = null;
              });
            },
            child: FadeInUpBig(
              duration: Duration(milliseconds: 1600),
              child: Stack(
                children: [
                  InkWell(
                      onDoubleTap: () {
                        LinkLauncher.launchURL(githubRepoLink);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(image),
                            fit: BoxFit.fill,
                          ),
                        ),
                      )),
                  Visibility(
                    visible: index == HoverIndex,
                    child: AnimatedContainer(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [
                            AppColors.containercolor.withOpacity(0.9),
                            AppColors.containercolor.withOpacity(0.8),
                            AppColors.containercolor.withOpacity(0.7),
                            AppColors.containercolor.withOpacity(0.6),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      duration: Duration(milliseconds: 200),
                      child: Column(
                        children: [
                          Text(
                            projectTitle,
                            style: AppTheme.bodytextstyle(
                              fontWeight: FontWeight.w700,
                              color: AppColors.darkBackgroundColor,
                              size: 24,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            projectDetail,
                            style: AppTheme.bodytextstyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                              size: 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              LinkLauncher.launchURL(githubRepoLink);
                            },
                            icon: Image.asset(
                              AppAssets.github,
                              height: 30,
                              width: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  FadeInRight projecttext() {
    return FadeInRight(
      duration: const Duration(milliseconds: 1600),
      child: RichText(
        text: TextSpan(
          text: "My ",
          style: AppTheme.bodytextstyle(
            fontWeight: FontWeight.w900,
            size: 50,
          ),
          children: [
            TextSpan(
              text: '"Work"',
              style: AppTheme.nametextstyle(
                fontWeight: FontWeight.w900,
                color: AppColors.textcolor,
                size: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
