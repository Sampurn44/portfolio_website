import 'package:flutter/material.dart';
import 'package:portfolio_website/model/skills.dart';
import 'package:portfolio_website/widgets/skills_button.dart';

class SkillsBuilder extends StatefulWidget {
  final List<Skill> skills;

  SkillsBuilder({required this.skills});

  @override
  State<SkillsBuilder> createState() => _SkillsBuilderState();
}

class _SkillsBuilderState extends State<SkillsBuilder> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    int buttonsPerRow = screenWidth < 1200
        ? screenWidth < 769
            ? 2
            : 3
        : 4;

    return Column(
      children: List<Widget>.generate(
        (widget.skills.length / buttonsPerRow).ceil(),
        (index) {
          int startIndex = index * buttonsPerRow;
          int endIndex = (index + 1) * buttonsPerRow;
          endIndex =
              endIndex > widget.skills.length ? widget.skills.length : endIndex;

          List<Skill> rowSkills = widget.skills.sublist(startIndex, endIndex);

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: rowSkills.map((skill) {
                return AnimatedSkillContainer(
                  imagePath: skill.imagePath,
                  name: skill.name,
                );
              }).toList(),
            ),
          );
        },
      ),
    );
  }
}
