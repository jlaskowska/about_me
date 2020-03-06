import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:about_me/extensions/hover_extensions.dart';

class AdaptiveButton extends StatelessWidget {
  final void Function() onPressed;
  final Widget child;

  const AdaptiveButton({@required this.onPressed, @required this.child, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return kIsWeb
        ? GestureDetector(
            onTap: onPressed,
            child: Container(
              color: Colors.transparent,
              padding: const EdgeInsets.all(8.0),
              child: child,
            ),
          ).showCursorOnHover
        : InkWell(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: child,
            ),
            onTap: onPressed,
          );
  }
}
