import 'package:jlaskowska/models/project_data_model.dart';

class ResumeSettings {
  static const summary =
      'Self-taught Flutter developer with six-months experience of building elegant interfaces for mobile apps. Problem solver who writes robust code and is passionate about testing and continuous integration.';

  static const skills = const [
    'Dart',
    'Flutter',
    'Git',
    'Provider',
    'MobX',
    'CI/CD',
    'Firebase',
    'UI/UX',
    'Jira',
    'Testing',
    'Xcode',
    'UML',
  ];

  static const List<ProjectDataModel> projects = const [
    ProjectDataModel(
      projectTitle: 'Website',
      bulletPoints: [],
      assetPath: 'assets/images/resume/jl_app_icon.png',
    ),
    ProjectDataModel(
      projectTitle: 'Todo',
      bulletPoints: [],
      assetPath: 'assets/images/resume/todo_app_icon.png',
    ),
    ProjectDataModel(
      projectTitle: 'Signup',
      bulletPoints: [],
      assetPath: 'assets/images/resume/signup_app_icon.png',
    )
  ];
}