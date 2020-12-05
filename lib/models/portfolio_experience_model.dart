import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class PortfolioExperienceModel {
  final IconData icon;
  final double iconSize;
  final String title;
  final String subtitle;

  const PortfolioExperienceModel({
    @required this.icon,
    this.iconSize = 38,
    @required this.title,
    @required this.subtitle,
  });
}
