import 'package:flutter/material.dart';
import 'package:jlaskowska/config/personal_info.dart';
import 'package:jlaskowska/widgets/common/avatar.dart';
import 'package:jlaskowska/widgets/common/image_button.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactInformation extends StatelessWidget {
  const ContactInformation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Avatar(size: 90),
          SizedBox(width: 8),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Theme(
                data: ThemeData.light(),
                child: Text(
                  PersonalInfo.name,
                  style: TextStyle(
                    color: Theme.of(context).accentColor,
                    fontSize: 32,
                  ),
                ),
              ),
              Text(
                PersonalInfo.position,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                PersonalInfo.city,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
          SizedBox(width: 8),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ImageButton(
                onPressed: () async => await launch(PersonalInfo.linkedInUrl),
                size: 32,
                assetPath: 'assets/images/home_screen/linkedin.png',
              ),
              ImageButton(
                onPressed: () async => await launch(PersonalInfo.gitHubUrl),
                size: 32,
                assetPath: 'assets/images/home_screen/github_black.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
