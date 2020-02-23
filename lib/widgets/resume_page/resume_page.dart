import 'package:flutter/material.dart';
import 'package:jlaskowska/widgets/common/webpage.dart';
import 'package:jlaskowska/widgets/resume_page/resume_page_content.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Webpage(
      content: ResumePageContent(),
    );
  }
}
