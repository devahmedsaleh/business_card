import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import 'package:business_card/person.dart';
import 'package:business_card/main.dart';

void main() {
  Person p = Person(name: '', email: '', phoneNumber: '', jobTitle: '');

  testWidgets('should have a circle avatar', (WidgetTester tester) async {
    await tester.pumpWidget(BusinessCard(p));

    final circleAvatarFinder = find.byType(CircleAvatar);

    expect(circleAvatarFinder, findsOneWidget);
  });

  testWidgets('should have two cards', (WidgetTester tester) async {
    await tester.pumpWidget(BusinessCard(p));

    final cardFinder = find.byType(Card);

    expect(cardFinder, findsNWidgets(2));
  });
}
