import 'package:flutter/material.dart';
import 'package:jlaskowska/widgets/resume_page/sections/common/content_tile.dart';
import 'package:jlaskowska/widgets/resume_page/sections/common/headline.dart';

class Education extends StatelessWidget {
  const Education({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Headline('Education'),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ContentTile(
                    title: 'Msc Clinical Psychology, SWPS.',
                    subtitle: 'Expected June 2021',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
