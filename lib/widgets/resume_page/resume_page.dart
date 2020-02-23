import 'package:flutter/material.dart';
import 'package:jlaskowska/widgets/common/webpage.dart';

class ResumePage extends StatelessWidget {
  const ResumePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Webpage(
      content: Center(
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
