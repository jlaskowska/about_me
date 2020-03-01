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
              ContentTile(
                icon: Icons.local_hospital,
                title: 'Psychological Assistant',
                subtitle: 'Sept. 2018 - Sept. 2019, Berlin',
              ),
              ContentTile(
                icon: Icons.build,
                iconSize: 34,
                title: 'Technical Support, AVM',
                subtitle: 'June 2015 - July 2017, Berlin',
              ),
            ],
          )
        ],
      ),
    );
  }
}
