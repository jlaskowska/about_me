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
      bulletPoints: [
        'Responsive personal website and app.',
        'This resume that you are reading :)',
        'Punkt 1',
        'Punkt 1',
        'Punkt 1',
      ],
      assetPath: 'assets/images/resume/jl_app_icon.png',
    ),
    ProjectDataModel(
      projectTitle: 'Todo',
      bulletPoints: [
        'App to keep track of one\'s todos.',
        'Persists data to device using Hive.',
        'Supports both light and dark mode.',
        'Localized into three languages.',
        'Animated chart of completed tasks.',
      ],
      assetPath: 'assets/images/resume/todo_app_icon.png',
    ),
    ProjectDataModel(
      projectTitle: 'Signup',
      bulletPoints: [
        'App to sign-up, sign-in and sign-out.',
        'Main functionality defined in interface, implementation powered by Firebase.',
        'Unique background design achieved using custom drawn shapes & curves.',
      ],
      assetPath: 'assets/images/resume/signup_app_icon.png',
    )
  ];
}
