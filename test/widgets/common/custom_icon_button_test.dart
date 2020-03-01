import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../lib/widgets/common/custom_icon_button.dart';

void main() {
  testWidgets('CustomIconButton is a GestureDetector with an icon.', (tester) async {
    var myInt = 0;

    await tester.pumpWidget(
      MaterialApp(
        home: CustomIconButton(
          icon: Icons.ac_unit,
          onPressed: () => myInt = 10,
        ),
      ),
    );

    final gestureDetectorFinder = find.byType(GestureDetector);
    expect(gestureDetectorFinder, findsOneWidget);

    final iconFinder = find.byIcon(Icons.ac_unit);
    expect(iconFinder, findsOneWidget);

    GestureDetector gestureDetector = tester.widget(gestureDetectorFinder);
    expect(gestureDetector.child, tester.widget(iconFinder));

    // await tester.tap(gestureDetectorFinder);
    gestureDetector.onTap();
    expect(myInt, 10);
  });
}
