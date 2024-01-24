import 'package:flutter/material.dart';
import 'package:portfolio_website/model/skills.dart';
import 'package:portfolio_website/widgets/skills_button.dart';

class SkillsBuilder extends StatefulWidget {
  @override
  State<SkillsBuilder> createState() => _SkillsBuilderState();
}

class _SkillsBuilderState extends State<SkillsBuilder> {
  @override
  Widget build(BuildContext context) {
    bool isHover = false;
    return Column(
      children: List<Widget>.generate(
        (SkillsList.skills.length / 4).ceil(),
        (index) {
          int startIndex = index * 4;
          int endIndex = (index + 1) * 4;
          endIndex = endIndex > SkillsList.skills.length
              ? SkillsList.skills.length
              : endIndex;

          List<Skill> rowSkills =
              SkillsList.skills.sublist(startIndex, endIndex);

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

class Skills2Builder extends StatefulWidget {
  @override
  State<Skills2Builder> createState() => _Skills2BuilderState();
}

class _Skills2BuilderState extends State<Skills2Builder> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List<Widget>.generate(
        (Skills2List.skills.length / 3).ceil(),
        (index) {
          int startIndex = index * 3;
          int endIndex = (index + 1) * 3;
          endIndex = endIndex > Skills2List.skills.length
              ? Skills2List.skills.length
              : endIndex;

          List<Skill> rowSkills =
              Skills2List.skills.sublist(startIndex, endIndex);

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

class Skills3Builder extends StatefulWidget {
  @override
  State<Skills3Builder> createState() => _Skills3BuilderState();
}

class _Skills3BuilderState extends State<Skills3Builder> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List<Widget>.generate(
        (Skills3List.skills.length / 4).ceil(),
        (index) {
          int startIndex = index * 4;
          int endIndex = (index + 1) * 4;
          endIndex = endIndex > Skills3List.skills.length
              ? Skills3List.skills.length
              : endIndex;

          List<Skill> rowSkills =
              Skills3List.skills.sublist(startIndex, endIndex);

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

class Skills4Builder extends StatefulWidget {
  @override
  State<Skills4Builder> createState() => _Skills4BuilderState();
}

class _Skills4BuilderState extends State<Skills4Builder> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List<Widget>.generate(
        (Skills3List.skills.length / 4).ceil(),
        (index) {
          int startIndex = index * 4;
          int endIndex = (index + 1) * 4;
          endIndex = endIndex > Skills4List.skills.length
              ? Skills4List.skills.length
              : endIndex;

          List<Skill> rowSkills =
              Skills4List.skills.sublist(startIndex, endIndex);

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

class Skills5Builder extends StatefulWidget {
  @override
  State<Skills5Builder> createState() => _Skills5BuilderState();
}

class _Skills5BuilderState extends State<Skills5Builder> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List<Widget>.generate(
        (Skills5List.skills.length / 4).ceil(),
        (index) {
          int startIndex = index * 4;
          int endIndex = (index + 1) * 4;
          endIndex = endIndex > Skills5List.skills.length
              ? Skills5List.skills.length
              : endIndex;

          List<Skill> rowSkills =
              Skills5List.skills.sublist(startIndex, endIndex);

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
