import 'package:flutter/material.dart';
import 'package:jlaskowska/config/resume_content.dart';
import 'package:jlaskowska/widgets/resume_page/sections/common/headline.dart';

class Skills extends StatelessWidget {
  const Skills({Key key}) : super(key: key);

  static const colors = const [
    const Color(0xff8788f5),
    const Color(0xfff587bf),
    const Color(0xfff5bd87),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Headline('Skills'),
          SizedBox(height: 8),
          Wrap(
            children: <Widget>[
              for (int index = 0; index < ResumeContent.skills.length; index++)
                _SkillChip(
                  backgroundColor: colors[index % colors.length],
                  text: ResumeContent.skills[index],
                ),
            ],
            spacing: 8,
            runSpacing: 8,
          ),
        ],
      ),
    );
  }
}

class _SkillChip extends StatelessWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  final String text;

  const _SkillChip({
    @required this.backgroundColor,
    this.foregroundColor = Colors.white,
    @required this.text,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        color: backgroundColor,
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              child: Icon(
                Icons.check,
                color: backgroundColor,
                size: 18,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: foregroundColor,
              ),
            ),
            SizedBox(width: 8),
            Center(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 14,
                  color: foregroundColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
