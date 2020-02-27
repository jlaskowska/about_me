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
    'UI/UX',
    'Jira',
    'Xcode',
    'UML',
    'Firebase',
    'Testing',
  ];

  static const List<ProjectDataModel> projects = const [
    ProjectDataModel(
      projectTitle: 'About Me',
      bulletPoints: [
        'Responsive personal website and app.',
        'Developed for multiple screen sizes and orientations.',
        'All sections, including Ré­su­mé, are written in Flutter.',
        'By reading this you\'re intreracting with Flutter code 😃',
      ],
      assetPath: 'assets/images/resume/jl_app_icon.png',
    ),
    ProjectDataModel(
      projectTitle: 'Todo',
      bulletPoints: [
        'Persists data to device using Hive.',
        'Supports both light and dark mode.',
        'Localized into three languages.',
        'Displays animated chart of completed tasks.',
      ],
      assetPath: 'assets/images/resume/todo_app_icon.png',
    ),
    ProjectDataModel(
      projectTitle: 'Signup',
      bulletPoints: [
        'App to sign-up, sign-in and sign-out.',
        'Main functionality defined in interface.',
        'Implementation powered by Firebase.',
        'Unique background design achieved by custom drawn shapes & curves.',
      ],
      assetPath: 'assets/images/resume/signup_app_icon.png',
    )
  ];
}
