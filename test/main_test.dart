import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import 'package:business_card/main.dart';

void main() {
  testWidgets('should have a circle avatar', (WidgetTester tester) async {
    await tester.pumpWidget(BusinessCard());

    final circleAvatarFinder = find.byType(CircleAvatar);

    expect(circleAvatarFinder, findsOneWidget);
  });

  testWidgets('should have two cards', (WidgetTester tester) async {
    await tester.pumpWidget(BusinessCard());

    final cardFinder = find.byType(Card);

    expect(cardFinder, findsNWidgets(2));
  });
}
