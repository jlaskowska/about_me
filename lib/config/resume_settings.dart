import 'package:about_me/models/project_data_model.dart';

class ResumeSettings {
  static const summary =
      'Flutter developer with eight-months experience building elegant mobile applications. Results-driven problem solver who writes robust code and is passionate about testing. Quick learner looking for new challenges in an agile team environment.';

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
    'Java',
    'Firebase',
    'Swift',
  ];

  static const List<ProjectDataModel> projects = const [
    ProjectDataModel(
      projectTitle: 'About Me',
      bulletPoints: [
        'Personal website and mobile application.',
        'Responsive design, optimized for multiple devices, screen sizes and orientations.',
        'Adaptive behavior per platform, e.g. mouse hand on web, inkwell button on mobile.',
      ],
      assetPath: 'assets/images/common/aboutme_app_icon.png',
    ),
    ProjectDataModel(
      projectTitle: 'Todo',
      bulletPoints: [
        'App to organize and keep track of tasks.',
        'Persists data to device using Hive.',
        'Supports both light and dark modes.',
        'Localized into three languages.',
        'Displays animated chart of completed tasks.',
      ],
      assetPath: 'assets/images/common/todo_app_icon.png',
    ),
    ProjectDataModel(
      projectTitle: 'Signup',
      bulletPoints: [
        'App to sign-up, sign-in and sign-out.',
        'Main functionality defined in an interface.',
        'Implementation powered by Firebase.',
        'Unique background design achieved using custom drawn shapes and curves.',
      ],
      assetPath: 'assets/images/common/signup_app_icon.png',
    )
  ];

  static const footnote = 'By reading this ré­su­mé you are interacting with Flutter code!';
}
