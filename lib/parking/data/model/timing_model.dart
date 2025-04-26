import 'package:freezed_annotation/freezed_annotation.dart';

part 'timing_model.freezed.dart';
part 'timing_model.g.dart';

@freezed
abstract class TimingModel with _$TimingModel {
  const factory TimingModel({
    required int openingTime,
    required int closingTime,
  }) = _TimingModel;

  factory TimingModel.fromJson(Map<String, dynamic> json) => _$TimingModelFromJson(json);
}
