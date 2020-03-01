import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:jlaskowska/config/project_colors.dart';
import 'package:jlaskowska/widgets/resume_page/sections/contact_information.dart';
import 'package:jlaskowska/widgets/resume_page/sections/education.dart';
import 'package:jlaskowska/widgets/resume_page/sections/experience.dart';
import 'package:jlaskowska/widgets/resume_page/sections/hobbies.dart';
import 'package:jlaskowska/widgets/resume_page/sections/languages.dart';
import 'package:jlaskowska/widgets/resume_page/sections/projects.dart';
import 'package:jlaskowska/widgets/resume_page/sections/skills.dart';
import 'package:jlaskowska/widgets/resume_page/sections/summary.dart';

class ResumePageContent extends StatelessWidget {
  const ResumePageContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (_, orientation) => orientation == Orientation.landscape && kIsWeb
          ? _Landscape()
          : Center(
              child: Text(
                'Coming soon!',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
    );
  }
}

class _Landscape extends StatelessWidget {
  const _Landscape({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: AspectRatio(
        aspectRatio: 0.7072,
        child: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
              child: DefaultTextStyle(
                style: TextStyle(
                  fontFamily: 'Rubik',
                  color: ProjectColors.black,
                ),
                child: _LandscapeContent(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _LandscapeContent extends StatelessWidget {
  const _LandscapeContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        ContactInformation(),
        SizedBox(height: 24),
        Summary(),
        SizedBox(height: 24),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Projects(),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Skills(),
                  SizedBox(height: 24),
                  Experience(),
                  SizedBox(height: 16),
                  Education(),
                  SizedBox(height: 16),
                  Languages(),
                  SizedBox(height: 24),
                  Hobbies(),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
