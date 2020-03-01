import 'package:flutter/material.dart';
import 'package:about_me/config/project_colors.dart';

class ContentTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final double iconSize;
  final Color iconColor;

  const ContentTile({
    @required this.title,
    @required this.subtitle,
    @required this.icon,
    this.iconSize = 38,
    this.iconColor = ProjectColors.lightBlack,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      dense: true,
      leading: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: ProjectColors.black,
          fontSize: 12,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          color: ProjectColors.darkGray,
          fontStyle: FontStyle.italic,
          fontSize: 10,
        ),
      ),
    );
  }
}
