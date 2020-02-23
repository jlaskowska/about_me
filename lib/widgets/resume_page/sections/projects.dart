import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  const Projects({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      color: Colors.blue.shade100,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              // height: 100,
              color: Colors.blue.shade400,
            ),
          ),
          SizedBox(height: 8),
          Expanded(
            child: Container(
              // height: 100,
              color: Colors.blue.shade600,
            ),
          ),
          SizedBox(height: 8),
          Expanded(
            child: Container(
              // height: 100,
              color: Colors.blue.shade800,
            ),
          ),
        ],
      ),
    );
  }
}
