import 'package:about_me/widgets/common/adaptive_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final void Function() onPressed;

  const CustomIconButton({
    @required this.icon,
    @required this.onPressed,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final iconWidget = Icon(icon);

    return kIsWeb
        ? AdaptiveButton(
            child: iconWidget,
            onPressed: onPressed,
          )
        : IconButton(
            icon: iconWidget,
            onPressed: onPressed,
          );
  }
}
