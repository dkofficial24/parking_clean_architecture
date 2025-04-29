import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: i see List of List Tile
Future<void> iSeeListOfListTile(WidgetTester tester) async {
  expect(find.byType(ListTile), findsWidgets);
}
