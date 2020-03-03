import 'package:about_me/config/portfolio_settings.dart';
import 'package:about_me/config/project_colors.dart';
import 'package:about_me/models/portfolio_projects_model.dart';
import 'package:about_me/widgets/common/webpage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Webpage(
      content: OrientationBuilder(
        builder: (_, orientation) => SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 64), //TODO calculate somehow depending on height of _LandscapePortfolioContent ?
              _PortfolioContent(),
            ],
          ),
        ),
      ),
    );
  }
}

class _PortfolioContent extends StatelessWidget {
  const _PortfolioContent({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      runAlignment: WrapAlignment.start,
      spacing: 64,
      runSpacing: 64,
      children: <Widget>[
        for (PortfolioProjectsModel project in PortfolioSettings.projects)
          _PortfolioTile(
            assetPath: project.iconAssetPath,
            title: project.title,
            onTap: () => showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: ProjectColors.almostWhite,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              context: context,
              builder: (_) => SingleChildScrollView(
                child: _ProjectSheet(
                  title: project.title,
                  description: project.description,
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class _PortfolioTile extends StatelessWidget {
  final String title;
  final String assetPath;
  final Function() onTap;

  const _PortfolioTile({
    @required this.assetPath,
    @required this.title,
    @required this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Column(
          children: <Widget>[
            Image.asset(
              assetPath,
              height: 150,
              width: 150,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProjectSheet extends StatelessWidget {
  final String title;
  final String description;

  const _ProjectSheet({
    @required this.title,
    @required this.description,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Theme.of(context).accentColor,
            ),
            onPressed: () {},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: ProjectColors.lightBlack,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 14,
                      color: ProjectColors.darkGray,
                    ),
                  ),
                ],
              ),
              Placeholder(fallbackHeight: 650, fallbackWidth: 300),
              Placeholder(fallbackHeight: 650, fallbackWidth: 300),
              Placeholder(fallbackHeight: 650, fallbackWidth: 300),
            ],
          ),
        ],
      ),
    );
  }
}
