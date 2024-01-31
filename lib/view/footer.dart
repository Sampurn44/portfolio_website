import 'package:flutter/material.dart';
import 'package:portfolio_website/helper/helper_class.dart';
import 'package:portfolio_website/widgets/assets.dart';
import 'package:portfolio_website/widgets/colors.dart';
import 'package:portfolio_website/widgets/text_theme.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterClass extends StatelessWidget {
  const FooterClass({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return HelperClass(
      mobile: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                AppAssets.profile5,
                height: 200,
                width: 200,
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    sendEmail();
                  },
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10),
                    child: Text(
                      "Contact Me",
                      style: AppTheme.bodytextstyle(
                          fontWeight: FontWeight.w800,
                          color: AppColors.secondarycolor),
                    ),
                  ),
                ),
              ),
              Image.asset(
                AppAssets.profile6,
                height: 200,
                width: 200,
              ),
            ],
          ),
        ],
      ),
      tablet: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                AppAssets.profile5,
                height: 200,
                width: 200,
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    sendEmail();
                  },
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10),
                    child: Text(
                      "Contact Me",
                      style: AppTheme.bodytextstyle(
                          fontWeight: FontWeight.w800,
                          color: AppColors.secondarycolor),
                    ),
                  ),
                ),
              ),
              Image.asset(
                AppAssets.profile6,
                height: 200,
                width: 200,
              ),
            ],
          ),
        ],
      ),
      desktop: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                AppAssets.profile5,
                height: 200,
                width: 200,
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    sendEmail();
                  },
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10),
                    child: Text(
                      "Contact Me",
                      style: AppTheme.bodytextstyle(
                          fontWeight: FontWeight.w800,
                          color: AppColors.secondarycolor),
                    ),
                  ),
                ),
              ),
              Image.asset(
                AppAssets.profile6,
                height: 200,
                width: 200,
              ),
            ],
          ),
        ],
      ),
      paddingWidth: size.width * 0.1,
      bgColor: AppColors.backgoundcolor,
      isfotter: true,
    );

    //  Container(
    //   height: size.width * 0.5,
    //   width: MediaQuery.of(context).size.width,
    //   //color: AppColors.creamyBackground,
    //   alignment: Alignment.centerRight,
    //   padding: const EdgeInsets.symmetric(
    //     horizontal: 40,
    //   ),
    //   child: Column(
    //     children: [
    //       SizedBox(
    //         height: 50,
    //       ),
    //       InkWell(
    //         onTap: () {},
    //         child: Container(
    //           height: 40,
    //           width: 40,
    //           decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(10),
    //               color: AppColors.containercolor),
    //           child: const Icon(
    //             Icons.arrow_upward,
    //             size: 25,
    //             color: Colors.black,
    //           ),
    //         ),
    //       ),
    //       Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           Image.asset(
    //             AppAssets.profile5,
    //             height: 200,
    //             width: 200,
    //           ),
    //           Center(
    //             child: MaterialButton(
    //               onPressed: () {
    //                 sendEmail();
    //               },
    //               color: AppColors.containercolor,
    //               elevation: 6,
    //               focusElevation: 12,
    //               splashColor: const Color.fromARGB(255, 4, 231, 121),
    //               shape: OutlineInputBorder(
    //                 borderSide: BorderSide.none,
    //                 borderRadius: BorderRadius.circular(12),
    //               ),
    //               hoverColor: AppColors.backgoundcolor,
    //               height: 55,
    //               minWidth: 130,
    //               child: Padding(
    //                 padding: const EdgeInsets.symmetric(
    //                     horizontal: 20.0, vertical: 10),
    //                 child: Text(
    //                   "Contact Me",
    //                   style: AppTheme.bodytextstyle(
    //                       fontWeight: FontWeight.w800,
    //                       color: AppColors.secondarycolor),
    //                 ),
    //               ),
    //             ),
    //           ),
    //           Image.asset(
    //             AppAssets.profile6,
    //             height: 200,
    //             width: 200,
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
  }

  void sendEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'sampurn10chouksey@gmail.com',
      queryParameters: {'subject': 'Hi can we talk?'},
    );

    // ignore: deprecated_member_use
    if (await canLaunch(emailLaunchUri.toString())) {
      // ignore: deprecated_member_use
      await launch(emailLaunchUri.toString());
    } else {
      print('Could not launch email');
    }
  }
}
