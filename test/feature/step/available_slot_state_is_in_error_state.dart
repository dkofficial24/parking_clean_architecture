import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:parking_demo/parking/core/di/di_injection.dart';
import 'package:parking_demo/parking/presentation/bloc/parking_bloc.dart';
import 'package:parking_demo/parking/presentation/bloc/parking_states.dart';

/// Usage: available slot state is in error state
Future<void> availableSlotStateIsInErrorState(WidgetTester tester) async {
  when(
    getIt<ParkingBloc>().state,
  ).thenReturn(ParkingError('Something went wrong'));
}
