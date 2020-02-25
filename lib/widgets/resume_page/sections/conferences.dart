import 'package:flutter/material.dart';
import 'package:jlaskowska/widgets/resume_page/sections/common/headline.dart';

class Conferences extends StatelessWidget {
  const Conferences({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Headline('Conferences Attended'),
          SizedBox(height: 8),
          Center(
            child: Image.asset(
              'assets/images/resume/flutter_europe.png',
              height: 65,
            ),
          ),
          SizedBox(width: 16.0),
          Center(
            child: Text(
              'World\'s first Flutter conference, Jan 2020.',
              maxLines: 4,
              style: TextStyle(
                fontSize: 13,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
