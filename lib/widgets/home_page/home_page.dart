import 'package:flutter/material.dart';
import 'package:jlaskowska/widgets/common/webpage.dart';
import 'package:jlaskowska/widgets/home_page/home_page_content.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Webpage(
      content: HomePageContent(),
    );
  }
}
