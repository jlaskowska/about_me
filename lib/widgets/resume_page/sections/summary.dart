import 'package:flutter/material.dart';
import 'package:jlaskowska/config/resume_content.dart';

class Summary extends StatelessWidget {
  const Summary({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(
        ResumeContent.summary,
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 16,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
