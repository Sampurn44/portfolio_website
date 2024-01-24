import 'package:flutter/material.dart';
import 'package:portfolio_website/view/body.dart';
import 'package:portfolio_website/widgets/assets.dart';
import 'package:portfolio_website/widgets/colors.dart';
import 'package:portfolio_website/widgets/text_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backgoundcolor,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 100,
        titleSpacing: 23,
        backgroundColor: AppColors.backgoundcolor,
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: size.height * 0.1),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  AppAssets.owl,
                  width: 90,
                  height: 120,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: size.height * 0.1),
              child: Text(
                'My Portfolio',
                style: AppTheme.portfoliotextstyle(
                    fontWeight: FontWeight.w900, size: 50),
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.all(size.width * 0.01),
              child: TextButton(
                child: Text(
                  'Home',
                  style: AppTheme.headertextstyle(fontWeight: FontWeight.w500),
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.all(size.width * 0.01),
              child: TextButton(
                child: Text(
                  'About',
                  style: AppTheme.headertextstyle(fontWeight: FontWeight.w500),
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.all(size.width * 0.01),
              child: TextButton(
                child: Text(
                  'Highlights',
                  style: AppTheme.headertextstyle(fontWeight: FontWeight.w500),
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.all(size.width * 0.01),
              child: TextButton(
                child: Text(
                  'Projects',
                  style: AppTheme.headertextstyle(fontWeight: FontWeight.w500),
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.all(size.width * 0.01),
              child: TextButton(
                child: Text(
                  'Contact',
                  style: AppTheme.headertextstyle(fontWeight: FontWeight.w500),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      body: Body(),
    );
  }
}
