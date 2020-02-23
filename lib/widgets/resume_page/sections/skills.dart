import 'package:flutter/material.dart';
import 'package:jlaskowska/config/resume_content.dart';
import 'package:jlaskowska/widgets/resume_page/sections/common/headline.dart';

class Skills extends StatelessWidget {
  const Skills({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Headline('Skills'),
          SizedBox(height: 8),
          LayoutBuilder(
            builder: (_, constraints) {
              final width = constraints.maxWidth * 0.5;

              return Wrap(
                children: <Widget>[
                  for (final skill in ResumeContent.skills)
                    Container(
                      width: width,
                      child: Text(
                        '• $skill',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
