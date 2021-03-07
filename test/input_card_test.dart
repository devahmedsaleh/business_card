import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import 'package:business_card/input_card.dart';

Widget _wrap(Widget widget) => MaterialApp(home: widget);

void main() {
  testWidgets("should have a list tile", (WidgetTester tester) async {
    final inputCard = InputCard(title: '', icon: Icons.phone);

    await tester.pumpWidget(_wrap(inputCard));

    expect(find.byType(ListTile), findsOneWidget);
  });

  testWidgets("should include title in listTile", (WidgetTester tester) async {
    const String title = 'text';
    final inputCard = InputCard(title: title, icon: Icons.phone);

    await tester.pumpWidget(_wrap(inputCard));

    expect(find.widgetWithText(ListTile, title), findsOneWidget);
  });
}
