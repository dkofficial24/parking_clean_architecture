import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: i see CircularProgressIndicator
Future<void> iSeeCircularprogressindicator(WidgetTester tester) async {
  expect(find.byType(CircularProgressIndicator), findsOneWidget);
}
