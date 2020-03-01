import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../lib/widgets/common/avatar.dart';

void main() {
  testWidgets('Avatar is simply an image.', (tester) async {
    const imageSize = 120.0;

    await tester.pumpWidget(Avatar(size: imageSize));

    final imageFinder = find.byType(Image);
    expect(imageFinder, findsOneWidget);

    Image image = tester.widget(imageFinder);
    expect(image.width, imageSize);
    expect(image.height, imageSize);
  });
}
