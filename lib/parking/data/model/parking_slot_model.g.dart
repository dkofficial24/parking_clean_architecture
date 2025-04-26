// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parking_slot_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ParkingSlotModel _$ParkingSlotModelFromJson(Map<String, dynamic> json) =>
    _ParkingSlotModel(
      id: json['id'] as String,
      name: json['name'] as String,
      locationName: json['locationName'] as String,
      isAvailable: json['isAvailable'] as bool,
      pricePerHour: (json['pricePerHour'] as num).toDouble(),
      totalCapacity: (json['totalCapacity'] as num).toInt(),
      availableSlots: (json['availableSlots'] as num).toInt(),
      slotType: json['slotType'] as String,
      features:
          (json['features'] as List<dynamic>).map((e) => e as String).toList(),
      imageUrl: json['imageUrl'] as String,
      address: json['address'] as String,
      location: LocationModel.fromJson(
        json['location'] as Map<String, dynamic>,
      ),
      timing: TimingModel.fromJson(json['timing'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ParkingSlotModelToJson(_ParkingSlotModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'locationName': instance.locationName,
      'isAvailable': instance.isAvailable,
      'pricePerHour': instance.pricePerHour,
      'totalCapacity': instance.totalCapacity,
      'availableSlots': instance.availableSlots,
      'slotType': instance.slotType,
      'features': instance.features,
      'imageUrl': instance.imageUrl,
      'address': instance.address,
      'location': instance.location.toJson(),
      'timing': instance.timing.toJson(),
    };
