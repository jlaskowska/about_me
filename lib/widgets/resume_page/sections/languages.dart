import 'package:flutter/material.dart';
import 'package:jlaskowska/widgets/resume_page/sections/common/headline.dart';

class Languages extends StatelessWidget {
  const Languages({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Headline('Languages'),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _LanguageIcon(language: 'EN'),
              _LanguageIcon(language: 'DE'),
              _LanguageIcon(language: 'PL'),
            ],
          ),
        ],
      ),
    );
  }
}

class _LanguageIcon extends StatelessWidget {
  final String language;
  final double size;

  const _LanguageIcon({
    @required this.language,
    this.size = 32,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      child: Center(
        child: Text(
          language,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
