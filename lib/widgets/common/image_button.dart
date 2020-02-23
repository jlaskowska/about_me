import 'package:flutter/material.dart';

/// A square image which is clickable
class ImageButton extends StatelessWidget {
  final Function() onPressed;
  final double size;
  final String assetPath;

  const ImageButton({
    @required this.onPressed,
    @required this.size,
    @required this.assetPath,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Image.asset(
        assetPath,
        width: size,
        height: size,
      ),
      onTap: onPressed,
    );
  }
}
