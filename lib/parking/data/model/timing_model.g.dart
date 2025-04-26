// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TimingModel _$TimingModelFromJson(Map<String, dynamic> json) => _TimingModel(
  openingTime: (json['openingTime'] as num).toInt(),
  closingTime: (json['closingTime'] as num).toInt(),
);

Map<String, dynamic> _$TimingModelToJson(_TimingModel instance) =>
    <String, dynamic>{
      'openingTime': instance.openingTime,
      'closingTime': instance.closingTime,
    };
