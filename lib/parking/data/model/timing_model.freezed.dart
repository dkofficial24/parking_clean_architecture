// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timing_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TimingModel {

 int get openingTime; int get closingTime;
/// Create a copy of TimingModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TimingModelCopyWith<TimingModel> get copyWith => _$TimingModelCopyWithImpl<TimingModel>(this as TimingModel, _$identity);

  /// Serializes this TimingModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TimingModel&&(identical(other.openingTime, openingTime) || other.openingTime == openingTime)&&(identical(other.closingTime, closingTime) || other.closingTime == closingTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,openingTime,closingTime);

@override
String toString() {
  return 'TimingModel(openingTime: $openingTime, closingTime: $closingTime)';
}


}

/// @nodoc
abstract mixin class $TimingModelCopyWith<$Res>  {
  factory $TimingModelCopyWith(TimingModel value, $Res Function(TimingModel) _then) = _$TimingModelCopyWithImpl;
@useResult
$Res call({
 int openingTime, int closingTime
});




}
/// @nodoc
class _$TimingModelCopyWithImpl<$Res>
    implements $TimingModelCopyWith<$Res> {
  _$TimingModelCopyWithImpl(this._self, this._then);

  final TimingModel _self;
  final $Res Function(TimingModel) _then;

/// Create a copy of TimingModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? openingTime = null,Object? closingTime = null,}) {
  return _then(_self.copyWith(
openingTime: null == openingTime ? _self.openingTime : openingTime // ignore: cast_nullable_to_non_nullable
as int,closingTime: null == closingTime ? _self.closingTime : closingTime // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TimingModel implements TimingModel {
  const _TimingModel({required this.openingTime, required this.closingTime});
  factory _TimingModel.fromJson(Map<String, dynamic> json) => _$TimingModelFromJson(json);

@override final  int openingTime;
@override final  int closingTime;

/// Create a copy of TimingModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimingModelCopyWith<_TimingModel> get copyWith => __$TimingModelCopyWithImpl<_TimingModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TimingModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimingModel&&(identical(other.openingTime, openingTime) || other.openingTime == openingTime)&&(identical(other.closingTime, closingTime) || other.closingTime == closingTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,openingTime,closingTime);

@override
String toString() {
  return 'TimingModel(openingTime: $openingTime, closingTime: $closingTime)';
}


}

/// @nodoc
abstract mixin class _$TimingModelCopyWith<$Res> implements $TimingModelCopyWith<$Res> {
  factory _$TimingModelCopyWith(_TimingModel value, $Res Function(_TimingModel) _then) = __$TimingModelCopyWithImpl;
@override @useResult
$Res call({
 int openingTime, int closingTime
});




}
/// @nodoc
class __$TimingModelCopyWithImpl<$Res>
    implements _$TimingModelCopyWith<$Res> {
  __$TimingModelCopyWithImpl(this._self, this._then);

  final _TimingModel _self;
  final $Res Function(_TimingModel) _then;

/// Create a copy of TimingModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? openingTime = null,Object? closingTime = null,}) {
  return _then(_TimingModel(
openingTime: null == openingTime ? _self.openingTime : openingTime // ignore: cast_nullable_to_non_nullable
as int,closingTime: null == closingTime ? _self.closingTime : closingTime // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
