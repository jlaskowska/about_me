import 'package:flutter/material.dart';
import 'package:jlaskowska/config/project_colors.dart';
import 'package:jlaskowska/config/resume_settings.dart';
import 'package:jlaskowska/models/project_data_model.dart';
import 'package:jlaskowska/widgets/resume_page/sections/common/headline.dart';

class Projects extends StatelessWidget {
  const Projects({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Headline('Projects'),
          for (ProjectDataModel project in ResumeSettings.projects)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: _ProjectCard(
                title: project.projectTitle,
                bulletPoints: project.bulletPoints,
                assetPath: project.assetPath,
              ),
            )
        ],
      ),
    );
  }
}

class _ProjectCard extends StatelessWidget {
  final String title;
  final List<String> bulletPoints;
  final String assetPath;

  const _ProjectCard({
    @required this.title,
    @required this.bulletPoints,
    @required this.assetPath,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(0),
      color: ProjectColors.darkGray,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: ProjectColors.lightBlack,
            ),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  assetPath,
                  width: 40,
                  height: 40,
                ),
              ),
              title: Text(title),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 4),
                for (String bulletPoint in bulletPoints)
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Container(
                      padding: const EdgeInsets.all(4.0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: ProjectColors.lightBlack,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Text(
                        bulletPoint,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                SizedBox(height: 4),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
