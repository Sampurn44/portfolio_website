import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website/widgets/assets.dart';
import 'package:portfolio_website/widgets/colors.dart';
import 'package:portfolio_website/widgets/text_theme.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: size.width * 0.1),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeInRight(
                duration: const Duration(milliseconds: 1600),
                child: RichText(
                  text: TextSpan(
                    text: "Contact ",
                    style: AppTheme.bodytextstyle(
                      fontWeight: FontWeight.w900,
                      color: AppColors.textcolor,
                      size: 50,
                    ),
                    children: [
                      TextSpan(
                        text: 'Me!',
                        style: AppTheme.bodytextstyle(
                          fontWeight: FontWeight.w900,
                          size: 50,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Expanded(
                child: Material(
                  borderRadius: BorderRadius.circular(12),
                  elevation: 8,
                  child: TextField(
                    decoration: inputDecoration(name: "Full Name"),
                  ),
                ),
              ),
              Expanded(
                child: Material(
                  borderRadius: BorderRadius.circular(12),
                  elevation: 8,
                  child: TextField(
                    decoration: inputDecoration(name: "Full Name"),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  InputDecoration inputDecoration({required String name}) {
    return InputDecoration(
      hintText: name,
      hintStyle: AppTheme.bodytextstyle(
        fontWeight: FontWeight.w600,
        color: AppColors.textcolor,
      ),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30), borderSide: BorderSide.none),
      filled: true,
      fillColor: Colors.white38,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 12,
      ),
    );
  }
}
