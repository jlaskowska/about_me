import 'package:flutter/material.dart';

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
          constraints: BoxConstraints.expand(),
          child: SingleChildScrollView(
            child: _PageStructure(),
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
      children: <Widget>[
        Text(
          'Coming soon!',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        Container(
          height: 400,
          color: Colors.green,
        ),
        Container(
          height: 400,
          color: Colors.orange,
        ),
      ],
    );
  }
}
