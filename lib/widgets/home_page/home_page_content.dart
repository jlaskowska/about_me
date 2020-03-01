import 'package:flutter/material.dart';
import 'package:jlaskowska/config/personal_info.dart';
import 'package:jlaskowska/widgets/common/avatar.dart';
import 'package:jlaskowska/widgets/common/image_button.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (_, orientation) {
        if (orientation == Orientation.landscape) {
          // HACK in extreme cases, the content may need to be scrollable in both directions, does not seem to be a widget for this
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Avatar(size: 300),
                        const SizedBox(width: 128), // TODO would be good to be flexible
                        _AboutMe(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        } else {
          return SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const SizedBox(height: 32),
                Avatar(size: 300),
                const SizedBox(height: 32), // TODO would be good to be flexible
                _AboutMe(),
              ],
            ),
          );
        }
      },
    );
  }
}

class _AboutMe extends StatelessWidget {
  const _AboutMe({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Hi, I\'m',
          style: const TextStyle(
            fontSize: 60,
          ),
        ),
        const SizedBox(height: 24),
        Text(
          PersonalInfo.name,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 45,
            color: Theme.of(context).accentColor,
          ),
        ),
        const SizedBox(height: 24),
        const Text(
          PersonalInfo.position,
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ImageButton(
              onPressed: () async => await launch(PersonalInfo.linkedInUrl),
              size: 64,
              assetPath: 'assets/images/home_screen/linkedin.png',
            ),
            const SizedBox(width: 16),
            ImageButton(
              onPressed: () async => await launch(PersonalInfo.gitHubUrl),
              size: 64,
              assetPath: 'assets/images/home_screen/github.png',
            ),
          ],
        ),
      ],
    );
  }
}
