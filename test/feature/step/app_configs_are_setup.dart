import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:parking_demo/parking/core/di/di_injection.dart';
import 'package:parking_demo/parking/presentation/bloc/parking_states.dart';

import '../util/di_helper.mocks.dart';

/// Usage: app configs are setup
Future<void> appConfigsAreSetup(WidgetTester tester) async {
  getIt.registerSingleton<MockParkingBloc>(MockParkingBloc());
  provideDummy<ParkingState>(ParkingInitial());
}
