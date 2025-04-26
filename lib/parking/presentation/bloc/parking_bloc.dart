import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:parking_demo/parking/domain/use_cases/fetch_parking_slot.dart';
import 'package:parking_demo/parking/presentation/bloc/parking_events.dart';
import 'package:parking_demo/parking/presentation/bloc/parking_states.dart';

@injectable
class ParkingBloc extends Bloc<ParkingEvent, ParkingState> {
  ParkingBloc(this.fetchParkingSlot) : super(const ParkingInitial()) {
    on<FetchedParking>(fetchParking);
  }

  final FetchParkingSlot fetchParkingSlot;

  Future<void> fetchParking(
    FetchedParking event,
    Emitter<ParkingState> emit,
  ) async {
    emit(const ParkingLoading());
    try {
      final dataList = await fetchParkingSlot();
      emit(ParkingLoaded(dataList));
    } catch (e) {
      print(e.toString());
      emit(ParkingError(e.toString()));
    }
  }
}
