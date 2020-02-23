import 'package:flutter/material.dart';

class ContactInformation extends StatelessWidget {
  const ContactInformation({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.orange.shade100,
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.orange.shade500,
              width: 200,
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.orange.shade900,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
