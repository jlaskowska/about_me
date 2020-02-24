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
          Headline('Conferences'),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}