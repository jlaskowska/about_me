import 'package:flutter/material.dart';
import 'package:about_me/widgets/common/webpage.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Webpage(
      content: Center(
        child: const Text(
          'Coming soon!',
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
