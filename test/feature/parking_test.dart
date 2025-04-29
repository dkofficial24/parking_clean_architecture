// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/app_configs_are_setup.dart';
import './step/available_slots_state_is_in_waiting_state.dart';
import './step/the_app_is_running.dart';
import './step/i_see_circularprogressindicator.dart';
import './step/available_slot_state_is_in_loaded_state.dart';
import './step/i_see_list_of_list_tile.dart';
import './step/available_slot_state_is_in_error_state.dart';
import './step/i_see_text.dart';

void main() {
  group('''Parking app''', () {
    Future<void> bddSetUp(WidgetTester tester) async {
      await appConfigsAreSetup(tester);
    }

    testWidgets('''See a CircularProgressIndicator''', (tester) async {
      await bddSetUp(tester);
      await availableSlotsStateIsInWaitingState(tester);
      await theAppIsRunning(tester);
      await iSeeCircularprogressindicator(tester);
    });
    testWidgets('''See a list of ListTile''', (tester) async {
      await bddSetUp(tester);
      await availableSlotStateIsInLoadedState(tester);
      await theAppIsRunning(tester);
      await iSeeListOfListTile(tester);
    });
    testWidgets('''See an error when available screen is shown''',
        (tester) async {
      await bddSetUp(tester);
      await availableSlotStateIsInErrorState(tester);
      await theAppIsRunning(tester);
      await iSeeText(tester, 'Something went wrong');
    });
  });
}
