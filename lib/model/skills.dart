import 'package:portfolio_website/widgets/assets.dart';

class Skill {
  final String imagePath;
  final String name;

  Skill({required this.imagePath, required this.name});
}

class SkillsList {
  static List<Skill> skills = [
    Skill(imagePath: AppAssets.c, name: 'C'),
    Skill(imagePath: AppAssets.cpp, name: 'C++'),
    Skill(imagePath: AppAssets.dart, name: 'Dart'),
    Skill(imagePath: AppAssets.python, name: 'Python'),
    Skill(imagePath: AppAssets.kotlin, name: 'Kotlin'),
    Skill(imagePath: AppAssets.java, name: 'Java'),
    // Add more skills as needed
  ];
}

class Skills2List {
  static List<Skill> skills = [
    Skill(imagePath: AppAssets.flutter, name: 'Flutter'),
    Skill(imagePath: AppAssets.android, name: 'Android'),
    // Add more skills as needed
  ];
}

class Skills3List {
  static List<Skill> skills = [
    Skill(imagePath: AppAssets.firebase, name: 'Firebase'),
    Skill(imagePath: AppAssets.mysql, name: 'MySql'),
    Skill(imagePath: AppAssets.sqlite, name: 'Sqllite'),
    Skill(imagePath: AppAssets.hive, name: 'Hive'),
    // Add more skills as needed
  ];
}

class Skills4List {
  static List<Skill> skills = [
    Skill(imagePath: AppAssets.pandas, name: 'Pandas'),
    Skill(imagePath: AppAssets.scikitlearn, name: 'Scikit'),
    Skill(imagePath: AppAssets.seaborn, name: 'Seaborn'),
    Skill(imagePath: AppAssets.matplotlib, name: 'MatLab'),
    // Add more skills as needed
  ];
}

class Skills5List {
  static List<Skill> skills = [
    Skill(imagePath: AppAssets.git, name: 'Git'),
    // Add more skills as needed
  ];
}
