import 'package:flutter/material.dart';
import 'package:jlaskowska/config/project_colors.dart';
import 'package:jlaskowska/widgets/resume_page/sections/common/headline.dart';

class Hobbies extends StatelessWidget {
  const Hobbies({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Headline('Hobbies'),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _HobbyIcon(
                icon: Icons.palette,
                color: ProjectColors.black,
              ),
              _HobbyIcon(
                icon: Icons.theaters,
                color: ProjectColors.black,
              ),
              _HobbyIcon(
                icon: Icons.flight,
                color: ProjectColors.black,
              ),
              _HobbyIcon(
                icon: Icons.music_note,
                color: ProjectColors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _HobbyIcon extends StatelessWidget {
  final double size;
  final IconData icon;
  final Color color;

  const _HobbyIcon({
    @required this.icon,
    this.size = 30,
    this.color,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: color,
      size: size,
    );
  }
}
