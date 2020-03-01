import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String routeName;

  const NavBarItem({
    @required this.title,
    @required this.routeName,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(routeName),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
