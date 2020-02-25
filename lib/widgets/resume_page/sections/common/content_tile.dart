import 'package:flutter/material.dart';
import 'package:jlaskowska/config/project_colors.dart';

class ContentTile extends StatelessWidget {
  final String title;
  final String subtitle;

  final Color backgroundColor;
  final Color contentColor;

  const ContentTile({
    @required this.title,
    @required this.subtitle,
    this.backgroundColor = ProjectColors.lightBlack,
    this.contentColor = Colors.white,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: backgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(
                fontSize: 14,
                color: contentColor,
              ),
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: 10,
                fontStyle: FontStyle.italic,
                color: contentColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
