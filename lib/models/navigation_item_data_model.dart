import 'package:flutter/material.dart';
import 'package:jlaskowska/config/route_names.dart';

class NavigationItemDataModel {
  final String title;

  final String routeName;

  const NavigationItemDataModel({
    @required this.title,
    @required this.routeName,
  });
}

const navBarItems = const [
  NavigationItemDataModel(title: 'Home', routeName: RouteNames.home),
  NavigationItemDataModel(title: 'Portfolio', routeName: RouteNames.portfolio),
  NavigationItemDataModel(title: 'Ré­su­mé', routeName: RouteNames.resume),
];
