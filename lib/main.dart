import 'package:flutter/material.dart';
import 'package:jlaskowska/config/project_colors.dart';
import 'package:jlaskowska/config/route_names.dart';
import 'package:jlaskowska/widgets/home_page/home_page.dart';
import 'package:jlaskowska/widgets/portfolio_page/portfolio_page.dart';
import 'package:jlaskowska/widgets/resume_page/resume_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        accentColor: ProjectColors.pink,
        fontFamily: 'Rubik',
      ),
      routes: {
        RouteNames.home: (_) => HomePage(),
        RouteNames.portfolio: (_) => PortfolioPage(),
        RouteNames.resume: (_) => ResumePage(),
      },
    );
  }
}
