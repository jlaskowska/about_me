import 'package:about_me/config/resume_settings.dart';
import 'package:flutter/material.dart';
import 'package:about_me/widgets/resume_page/sections/common/content_tile.dart';
import 'package:about_me/widgets/resume_page/sections/common/headline.dart';

class Experience extends StatelessWidget {
  const Experience({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Headline('Experience'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              for (final job in ResumeSettings.jobs)
                ContentTile(
                  icon: job.icon,
                  iconSize: job.iconSize,
                  title: job.title,
                  subtitle: job.subtitle,
                ),
            ],
          )
        ],
      ),
    );
  }
}
