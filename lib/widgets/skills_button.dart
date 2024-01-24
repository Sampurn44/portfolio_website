import 'package:flutter/material.dart';
import 'package:portfolio_website/model/skills.dart';
import 'package:portfolio_website/widgets/colors.dart';
import 'package:portfolio_website/widgets/text_theme.dart';

class AnimatedSkillContainer extends StatefulWidget {
  final String imagePath;
  final String name;

  AnimatedSkillContainer({
    required this.imagePath,
    required this.name,
  });

  @override
  State<AnimatedSkillContainer> createState() => _AnimatedSkillContainerState();
}

class _AnimatedSkillContainerState extends State<AnimatedSkillContainer> {
  bool ishover = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColors.backgoundcolor,
      highlightColor: AppColors.backgoundcolor,
      onTap: () {},
      onHover: (value) {
        setState(() {
          ishover = value;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AnimatedContainer(
          width: 85,
          height: 85,
          duration: Duration(milliseconds: 200),
          decoration: BoxDecoration(
              color: ishover
                  ? AppColors.creamyBackground
                  : AppColors.containercolor,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                    color: ishover
                        ? AppColors.secondarycolor
                        : const Color.fromARGB(255, 48, 31, 31),
                    spreadRadius: 4.0,
                    blurRadius: 4.5,
                    offset: Offset(0.0, 1.5))
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(widget.imagePath, width: 30, height: 30),
              SizedBox(height: 5),
              Text(
                widget.name,
                style: AppTheme.headertextstyle(
                    size: 15,
                    fontWeight: FontWeight.w900,
                    color: ishover
                        ? AppColors.textcolor
                        : AppColors.secondarycolor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
