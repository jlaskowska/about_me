import 'package:flutter/material.dart';
import 'package:jlaskowska/widgets/resume_page/sections/common/content_tile.dart';
import 'package:jlaskowska/widgets/resume_page/sections/common/headline.dart';

class Experience extends StatelessWidget {
  const Experience({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Headline('Experience'),
          SizedBox(height: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ContentTile(
                title: 'Psychological Assistant',
                subtitle: 'Sept 2018 - Sept 2019, Berlin.',
              ),
              SizedBox(height: 8),
              ContentTile(
                title: 'Technical Support, AVM.',
                subtitle: 'June 2015 - June 2017, Berlin.',
              ),
            ],
          )
        ],
      ),
    );
  }
}
