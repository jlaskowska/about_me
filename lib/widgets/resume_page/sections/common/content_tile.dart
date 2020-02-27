import 'package:flutter/material.dart';
import 'package:jlaskowska/config/project_colors.dart';

class ContentTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  final Color iconColor;

  const ContentTile({
    @required this.title,
    @required this.subtitle,
    @required this.icon,
    this.iconColor = ProjectColors.lightBlack,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: Icon(
        icon,
        color: iconColor,
        size: 40,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: ProjectColors.black,
          fontSize: 12,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: ProjectColors.darkGray,
          fontSize: 10,
        ),
      ),
    );
  }
}
