import 'package:flutter/material.dart';
import 'package:jlaskowska/config/project_colors.dart';
import 'package:jlaskowska/widgets/resume_page/sections/contact_information.dart';
import 'package:jlaskowska/widgets/resume_page/sections/education.dart';
import 'package:jlaskowska/widgets/resume_page/sections/employment.dart';
import 'package:jlaskowska/widgets/resume_page/sections/hobbies.dart';
import 'package:jlaskowska/widgets/resume_page/sections/languages.dart';
import 'package:jlaskowska/widgets/resume_page/sections/projects.dart';
import 'package:jlaskowska/widgets/resume_page/sections/skills.dart';
import 'package:jlaskowska/widgets/resume_page/sections/summary.dart';

class ResumePageContent extends StatelessWidget {
  const ResumePageContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0),
      child: AspectRatio(
        aspectRatio: 0.7072,
        child: Container(
          color: Colors.white,
          // constraints: BoxConstraints.expand(),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: DefaultTextStyle(
                style: TextStyle(
                  fontFamily: 'Rubik',
                  color: ProjectColors.black,
                ),
                child: _PageStructure(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _PageStructure extends StatelessWidget {
  const _PageStructure({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        ContactInformation(),
        SizedBox(height: 8),
        Summary(),
        SizedBox(height: 8),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Projects(),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Skills(),
                  SizedBox(height: 8),
                  Employment(),
                  SizedBox(height: 8),
                  Education(),
                  SizedBox(height: 8),
                  Languages(),
                  SizedBox(height: 8),
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
