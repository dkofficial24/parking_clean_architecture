import 'package:parking_demo/parking/data/model/parking_slot_model.dart';

abstract class ParkingState {}

class ParkingInitial extends ParkingState {}

class ParkingLoading extends ParkingState {}

class ParkingLoaded extends ParkingState {
  final List<ParkingSlotModel> parkingSlots;

  ParkingLoaded(this.parkingSlots);

  ParkingLoaded copyWith({
    List<ParkingSlotModel>? parkingSlots,
  }) {
    return ParkingLoaded(
      parkingSlots ?? this.parkingSlots,
    );
  }
}

class ParkingError extends ParkingState {
  final String error;

  ParkingError(this.error);

  ParkingError copyWith({
    String? error,
  }) {
    return ParkingError(
      error ?? this.error,
    );
  }
}
