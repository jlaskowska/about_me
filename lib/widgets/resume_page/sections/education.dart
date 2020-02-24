import 'package:flutter/material.dart';
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
                  Text(
                    'SWPS University',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text('Master of Science in Clinical Psychology'),
                  Text('expected June 2021', style: TextStyle(fontSize: 10)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
