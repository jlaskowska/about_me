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
      elevation: 0,
      borderOnForeground: false,
      color: Colors.white,
      margin: const EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: ClipRRect(
                //TODO coinsider using iOS app border
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  assetPath,
                  width: 40,
                  height: 40,
                ),
              ),
              title: Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Divider(
            color: ProjectColors.lightBlack,
            thickness: 1,
            height: 2,
            // indent: 8,
            endIndent: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 4),
                for (String bp in bulletPoints)
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.code,
                          size: 16,
                          color: ProjectColors.black,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Text(
                            bp,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
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
