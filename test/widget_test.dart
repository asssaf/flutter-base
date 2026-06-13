import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:hello_world/main.dart';

void main() {
  testWidgets('Hello World UI verification test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the Hello, World! text is present.
    expect(find.text('Hello, World!'), findsOneWidget);
    expect(
      find.text('Welcome to your first Flutter application.'),
      findsOneWidget,
    );

    // Verify initial button text.
    expect(find.text('Say Hello Back'), findsOneWidget);
    expect(find.text('Tapped 1 times'), findsNothing);

    // Tap the button and trigger a frame.
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    // Verify button text changes.
    expect(find.text('Say Hello Back'), findsNothing);
    expect(find.text('Tapped 1 times'), findsOneWidget);
  });
}
