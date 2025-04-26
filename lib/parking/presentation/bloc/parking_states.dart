import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parking_demo/parking/data/model/parking_slot_model.dart';

part 'parking_states.freezed.dart';

@freezed
sealed class ParkingState with _$ParkingState {
  const factory ParkingState.parkingInitial() = ParkingInitial;
  const factory ParkingState.parkingLoading() = ParkingLoading;
  const factory ParkingState.parkingError(String error) = ParkingError;
  const factory ParkingState.parkingLoaded(List<ParkingSlotModel> parkingSlots) = ParkingLoaded;
}

