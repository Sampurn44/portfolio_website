import 'package:flutter/material.dart';
import 'package:portfolio_website/body.dart';
import 'package:portfolio_website/widgets/colors.dart';
import 'package:portfolio_website/widgets/text_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  'assets/owl3.png',
                  width: 90,
                  height: 120,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'My Portfolio',
                style: AppTheme.portfoliotextstyle(
                    fontWeight: FontWeight.w900, size: 50),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                child: Text(
                  'Home',
                  style: AppTheme.headertextstyle(fontWeight: FontWeight.w500),
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                child: Text(
                  'About',
                  style: AppTheme.headertextstyle(fontWeight: FontWeight.w500),
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                child: Text(
                  'Projects',
                  style: AppTheme.headertextstyle(fontWeight: FontWeight.w500),
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
      body: const Body(),
    );
  }
}
