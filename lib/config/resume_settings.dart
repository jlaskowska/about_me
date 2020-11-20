import 'package:about_me/models/portfolio_experience_model.dart';
import 'package:about_me/models/project_data_model.dart';
import 'package:flutter/material.dart';

class ResumeSettings {
  static const summary =
      'Flutter developer with two years experience building elegant mobile applications. Results-driven problem solver who writes robust code and is passionate about testing. Quick learner looking for new challenges in an agile team environment.';

  static const skills = const [
    'Dart',
    'Flutter',
    'Git',
    'Provider',
    'MobX',
    'CI/CD',
    'UI/UX',
    'BLoC',
    'SQLite',
    'Java',
    'Firebase',
    'Swift',
  ];

  static const List<ProjectDataModel> projects = const [
    ProjectDataModel(
      projectTitle: 'DayPepper',
      bulletPoints: [
        'Application where users plan their freetime and receive special event offers.',
        'Leading development of rewriting existing app from scratch using Flutter.',
        'Code architectural decisions such as state management, dependency injection.',
        'Responsive, performative and beautiful user interfaces from UX wireframes.',
        'Maps integration, filtering events by location, date and time.',
        'RESTful API calls with backend.',
        'Share event functionality, deeplinking.',
        'Adaptive popups across platforms.',
        'Establishing workflows, best practices and writting documentation.',
        'Localization and internationalization.',
      ],
      assetPath: 'assets/images/common/daypepper_app_icon.png',
    ),
    // ProjectDataModel(
    //   projectTitle: 'Art Store',
    //   bulletPoints: [
    //     'App to buy and view artworks.',
    //     'Popups are adaptive across platforms.',
    //     'Each artwork can be zoomed in and out.',
    //     'A SQLite database stores details about each artwork.',
    //     // 'Localized and internationalized into two langauges.',
    //   ],
    //   assetPath: 'assets/images/common/artstore_app_icon_border.png',
    // ),
    ProjectDataModel(
      projectTitle: 'About Me',
      bulletPoints: [
        'Personal website and mobile application.',
        'Responsive design, optimized for multiple devices, screen sizes and orientations.',
        'Adaptive behavior per platform, e.g. mouse hand on web, inkwell button on mobile.',
      ],
      assetPath: 'assets/images/common/aboutme_app_icon.png',
    ),
    // ProjectDataModel(
    //   projectTitle: 'Todo',
    //   bulletPoints: [
    //     'App to organize and keep track of tasks.',
    //     'Persists data to device using Hive.',
    //     'Supports both light and dark modes.',
    //     // 'Localized into three languages.',
    //     'Displays animated chart of completed tasks.',
    //   ],
    //   assetPath: 'assets/images/common/todo_app_icon.png',
    // ),
    // ProjectDataModel(
    //   projectTitle: 'Signup',
    //   bulletPoints: [
    //     'App to sign-up, sign-in and sign-out.',
    //     'Main functionality defined in an interface.',
    //     'Implementation powered by Firebase.',
    //     'Unique background design achieved using custom drawn shapes and curves.',
    //   ],
    //   assetPath: 'assets/images/common/signup_app_icon.png',
    // )
  ];

  static const List<PortfolioExperienceModel> jobs = const [
    PortfolioExperienceModel(
      icon: Icons.code,
      title: 'Flutter Developer',
      subtitle: 'Sept 2019 - present, Berlin',
    ),
    PortfolioExperienceModel(
      icon: Icons.local_hospital,
      title: 'Neuropsychology Assistant',
      subtitle: 'Sept 2018 - Sept 2019, Berlin',
    ),
    PortfolioExperienceModel(
      icon: Icons.build,
      iconSize: 34,
      title: 'Technical Support',
      subtitle: 'June 2015 - July 2017, Berlin',
    ),
  ];

  static const footnote = 'By reading this ré­su­mé you are interacting with Flutter code!';
}
