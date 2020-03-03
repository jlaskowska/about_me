import 'dart:math';

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
                  imageAssetPaths: project.screenshotAssetPaths,
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
  static const _padding = 32.0;
  static const _titleFontSize = 48;
  static const _desciptionTextWidth = 400.0;
  static const _imageWidth = 300.0;

  final String title;
  final String description;
  final List<String> imageAssetPaths;

  const _ProjectSheet({
    @required this.title,
    @required this.description,
    @required this.imageAssetPaths,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        // determine number of images to show
        int numberOfImagesToShow = 0;
        if (constraints.maxWidth >= 1450) {
          numberOfImagesToShow = 3;
        } else if (constraints.maxWidth >= 1080) {
          numberOfImagesToShow = 2;
        } else if (constraints.maxWidth >= 780) {
          numberOfImagesToShow = 1;
        }

        // determine available width
        final availableWidth = constraints.maxWidth - 2 * _padding;

        /// determine desciptionTextWidth which is the smaller value of availableWidth and constant _desciptionTextWidth
        final desciptionTextWidth = min(availableWidth, _desciptionTextWidth);

        /// determine a scale factor to scale title font size. this is at most 1.
        final scale = min(availableWidth / _desciptionTextWidth, 1);
        final titleFontSize = scale * _titleFontSize;

        return SafeArea(
          child: Container(
            padding: EdgeInsets.all(_padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                if (kIsWeb)
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Theme.of(context).accentColor,
                    ),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        if (kIsWeb) SizedBox(height: 48),
                        Text(
                          title,
                          style: TextStyle(
                            // fontSize: 48,
                            fontSize: titleFontSize,
                            fontWeight: FontWeight.bold,
                            color: ProjectColors.lightBlack,
                          ),
                        ),
                        SizedBox(height: 32),
                        Container(
                          width: desciptionTextWidth,
                          child: Text(
                            description,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 16,
                              color: ProjectColors.lightBlack,
                            ),
                            maxLines: 50,
                          ),
                        ),
                      ],
                    ),
                    if (numberOfImagesToShow > 0)
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            for (int i = 0; i < numberOfImagesToShow; i++)
                              imageAssetPaths.length > i
                                  ? Image.asset(
                                      imageAssetPaths[i],
                                      width: _imageWidth,
                                    )
                                  : Placeholder(fallbackHeight: 650, fallbackWidth: _imageWidth)
                          ],
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
