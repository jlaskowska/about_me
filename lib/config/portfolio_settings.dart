import 'package:about_me/models/portfolio_projects_model.dart';

class PortfolioSettings {
  static const projects = const [
    PortfolioProjectsModel(
      title: 'About Me',
      description: '',
      iconAssetPath: 'assets/images/common/aboutme_app_icon.png',
      screenshotAssetPaths: [
        'assets/images/portfolio/aboutme/01.png',
        'assets/images/portfolio/aboutme/02.png',
        'assets/images/portfolio/aboutme/03.png',
      ],
    ),
    PortfolioProjectsModel(
      title: 'Todo',
      description:
          'An application which allows the user to keep track of their todos. These todos are saved locally to the user\'s device using Hive. The app supports both light and dark mode and is localized into three languages: English, German and Polish. A friendly greeting is displayed to the user depending on the time of day. Provider is used for dependency injection, while MobX is used as the project\'s state management solution.',
      iconAssetPath: 'assets/images/common/todo_app_icon.png',
      screenshotAssetPaths: [
        'assets/images/portfolio/todo/01.gif',
        'assets/images/portfolio/todo/02.png',
        'assets/images/portfolio/todo/03.png',
      ],
    ),
    PortfolioProjectsModel(
      title: 'Signup',
      description:
          'An application which allows users to sign-up, sign-in and sign-out. The main functionality is defined by an interface, with a concrete implementation powered by Firebase. The unique background design was achieved by using CustomPainter to draw shapes and curves. Provider is used for dependency injection, while MobX is used as the project\'s state management solution.',
      iconAssetPath: 'assets/images/common/signup_app_icon.png',
      screenshotAssetPaths: [],
    ),
    PortfolioProjectsModel(
      title: 'Weather',
      description:
          'An application which allows the user to get the current weather (and five-day forecast) for their current location. The user has the option of using either degree Celsius or degree Fahrenheit, while if an error occurs (no internet, location permission not granted), a popup is displayed. Provider is used as the project\'s state management solution, while the forecast is taken from MetaWeather\'s API.',
      iconAssetPath: 'assets/images/common/weather_app_icon.png',
      screenshotAssetPaths: [],
    ),
    PortfolioProjectsModel(
      title: 'Quiz',
      description:
          'A fun quiz application where the user is presented a series of questions and must answer either true or false. Each game consists of ten questions (taken from opentdb.com\'s API), with the result displayed afterwards. setState is used as the project\'s state management solution.',
      iconAssetPath: 'assets/images/common/quiz_app_icon.png',
      screenshotAssetPaths: [],
    ),
    PortfolioProjectsModel(
      title: 'Questionnaires',
      description:
          'An application which allows the user to fill-out psychological questionnaires. For this first version, the questionnaire Satisfaction with Life Scale was chosen. The code architecture is designed so that a new questionnaire can be incorporated into the app by simply adding an additional json file. setState is used as the project\'s state management solution.',
      iconAssetPath: 'assets/images/common/questionnaires_app_icon.png',
      screenshotAssetPaths: [],
    ),
  ];
}
