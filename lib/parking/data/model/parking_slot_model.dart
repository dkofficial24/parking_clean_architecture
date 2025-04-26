import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parking_demo/parking/data/model/location_model.dart';
import 'package:parking_demo/parking/data/model/timing_model.dart';

part 'parking_slot_model.freezed.dart';

part 'parking_slot_model.g.dart';

@freezed
abstract class ParkingSlotModel with _$ParkingSlotModel {
  const factory ParkingSlotModel({
    required String id,
    required String name,
    required String locationName,
    required bool isAvailable,
    required double pricePerHour,
    required int totalCapacity,
    required int availableSlots,
    required String slotType,
    required List<String> features,
    required String imageUrl,
    required String address,
    required LocationModel location,
    required TimingModel timing,
  }) = _ParkingSlotModel;

  factory ParkingSlotModel.fromJson(Map<String, dynamic> json) =>
      _$ParkingSlotModelFromJson(json);
}
