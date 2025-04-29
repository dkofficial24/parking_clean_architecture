import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:parking_demo/parking/core/di/di_injection.dart';
import 'package:parking_demo/parking/presentation/bloc/parking_states.dart';

import '../util/di_helper.mocks.dart';

/// Usage: available slots state is in waiting state
Future<void> availableSlotsStateIsInWaitingState(WidgetTester tester) async {
  when(getIt<MockParkingBloc>().state).thenReturn(const ParkingLoading());
}
