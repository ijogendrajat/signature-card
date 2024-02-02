import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:signature_card/signature_card.dart';

void main() {
  testWidgets('SignatureCard should display "Signature"',
      (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SignatureCard(),
        ),
      ),
    );

    // Verify that the card has the correct color.
    expect(find.byType(Card), findsOneWidget);
    expect(find.byType(Text), findsOneWidget);
    expect(find.text('Signature'), findsOneWidget);
    expect(
      (tester.firstWidget(find.byType(Card)) as Card).color,
      equals(Colors.amber),
    );

    // Verify the size of the SizedBox
    expect(
      (tester.firstWidget(find.byType(SizedBox)) as SizedBox).height,
      equals(200),
    );
    expect(
      (tester.firstWidget(find.byType(SizedBox)) as SizedBox).width,
      equals(400),
    );
  });
}
