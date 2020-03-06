import 'package:about_me/models/portfolio_projects_model.dart';

class PortfolioSettings {
  static const projects = const [
    PortfolioProjectsModel(
      title: 'About Me',
      description:
          'Personal website and mobile application containing my ré­su­mé as well as projects made using Flutter. Responsive design, optimized for multiple devices, screen sizes and orientations. Thus content is shown based on the space available while behavior is adaptive across platforms, e.g. displays mouse hand on web or inkwell button on mobile. The ré­su­mé is particularly noteworthy as it was created using 100% Flutter code.',
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
      screenshotAssetPaths: [
        'assets/images/portfolio/signup/01.gif',
        'assets/images/portfolio/signup/02.png',
        'assets/images/portfolio/signup/03.png',
      ],
    ),
    PortfolioProjectsModel(
      title: 'Weather',
      description:
          'An application which allows the user to get the current weather (and five-day forecast) for their current location. The user has the option of using either degree Celsius or degree Fahrenheit, while if an error occurs (no internet, location permission not granted), a popup is displayed. Provider is used as the project\'s state management solution, while the forecast is taken from MetaWeather\'s API.',
      iconAssetPath: 'assets/images/common/weather_app_icon.png',
      screenshotAssetPaths: [
        'assets/images/portfolio/weather/01.gif',
        'assets/images/portfolio/weather/02.png',
        'assets/images/portfolio/weather/03.png',
      ],
    ),
    PortfolioProjectsModel(
      title: 'Quiz',
      description:
          'A fun quiz application where the user is presented a series of questions and must answer either true or false. Each game consists of ten questions (taken from opentdb.com\'s API), with the result displayed afterwards. setState is used as the project\'s state management solution.',
      iconAssetPath: 'assets/images/common/quiz_app_icon.png',
      screenshotAssetPaths: [
        'assets/images/portfolio/quiz/01.gif',
        'assets/images/portfolio/quiz/02.png',
        'assets/images/portfolio/quiz/03.png',
      ],
    ),
    PortfolioProjectsModel(
      title: 'Questionnaires',
      description:
          'An application which allows the user to fill-out psychological questionnaires. For this first version, the questionnaire Satisfaction with Life Scale was chosen. The code architecture is designed so that a new questionnaire can be incorporated into the app by simply adding an additional json file. setState is used as the project\'s state management solution.',
      iconAssetPath: 'assets/images/common/questionnaires_app_icon.png',
      screenshotAssetPaths: [
        'assets/images/portfolio/questionnaires/01.gif',
        'assets/images/portfolio/questionnaires/02.png',
        'assets/images/portfolio/questionnaires/03.png',
      ],
    ),
  ];
}
