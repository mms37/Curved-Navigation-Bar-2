// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:untitled26/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('App should load with initial page', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that our initial page is loaded.
    expect(find.text('Sayfa 1'), findsOneWidget);
  });

  testWidgets('Tap on navigation item should change page', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that our initial page is loaded.
    expect(find.text('Sayfa 1'), findsOneWidget);
    expect(find.text('Sayfa 2'), findsNothing);
    expect(find.text('Sayfa 3'), findsNothing);

    // Tap on the second navigation item.
    await tester.tap(find.byIcon(Icons.search));
    await tester.pumpAndSettle();

    // Verify that the second page is loaded.
    expect(find.text('Sayfa 1'), findsNothing);
    expect(find.text('Sayfa 2'), findsOneWidget);
    expect(find.text('Sayfa 3'), findsNothing);

    // Tap on the third navigation item.
    await tester.tap(find.byIcon(Icons.person));
    await tester.pumpAndSettle();

    // Verify that the third page is loaded.
    expect(find.text('Sayfa 1'), findsNothing);
    expect(find.text('Sayfa 2'), findsNothing);
    expect(find.text('Sayfa 3'), findsOneWidget);
  });
}
