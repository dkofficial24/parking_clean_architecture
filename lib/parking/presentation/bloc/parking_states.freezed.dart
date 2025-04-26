// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parking_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ParkingState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParkingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ParkingState()';
}


}

/// @nodoc
class $ParkingStateCopyWith<$Res>  {
$ParkingStateCopyWith(ParkingState _, $Res Function(ParkingState) __);
}


/// @nodoc


class ParkingInitial implements ParkingState {
  const ParkingInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParkingInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ParkingState.parkingInitial()';
}


}




/// @nodoc


class ParkingLoading implements ParkingState {
  const ParkingLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParkingLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ParkingState.parkingLoading()';
}


}




/// @nodoc


class ParkingError implements ParkingState {
  const ParkingError(this.error);
  

 final  String error;

/// Create a copy of ParkingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParkingErrorCopyWith<ParkingError> get copyWith => _$ParkingErrorCopyWithImpl<ParkingError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParkingError&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'ParkingState.parkingError(error: $error)';
}


}

/// @nodoc
abstract mixin class $ParkingErrorCopyWith<$Res> implements $ParkingStateCopyWith<$Res> {
  factory $ParkingErrorCopyWith(ParkingError value, $Res Function(ParkingError) _then) = _$ParkingErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ParkingErrorCopyWithImpl<$Res>
    implements $ParkingErrorCopyWith<$Res> {
  _$ParkingErrorCopyWithImpl(this._self, this._then);

  final ParkingError _self;
  final $Res Function(ParkingError) _then;

/// Create a copy of ParkingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ParkingError(
null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ParkingLoaded implements ParkingState {
  const ParkingLoaded(final  List<ParkingSlotModel> parkingSlots): _parkingSlots = parkingSlots;
  

 final  List<ParkingSlotModel> _parkingSlots;
 List<ParkingSlotModel> get parkingSlots {
  if (_parkingSlots is EqualUnmodifiableListView) return _parkingSlots;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_parkingSlots);
}


/// Create a copy of ParkingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParkingLoadedCopyWith<ParkingLoaded> get copyWith => _$ParkingLoadedCopyWithImpl<ParkingLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParkingLoaded&&const DeepCollectionEquality().equals(other._parkingSlots, _parkingSlots));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_parkingSlots));

@override
String toString() {
  return 'ParkingState.parkingLoaded(parkingSlots: $parkingSlots)';
}


}

/// @nodoc
abstract mixin class $ParkingLoadedCopyWith<$Res> implements $ParkingStateCopyWith<$Res> {
  factory $ParkingLoadedCopyWith(ParkingLoaded value, $Res Function(ParkingLoaded) _then) = _$ParkingLoadedCopyWithImpl;
@useResult
$Res call({
 List<ParkingSlotModel> parkingSlots
});




}
/// @nodoc
class _$ParkingLoadedCopyWithImpl<$Res>
    implements $ParkingLoadedCopyWith<$Res> {
  _$ParkingLoadedCopyWithImpl(this._self, this._then);

  final ParkingLoaded _self;
  final $Res Function(ParkingLoaded) _then;

/// Create a copy of ParkingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? parkingSlots = null,}) {
  return _then(ParkingLoaded(
null == parkingSlots ? _self._parkingSlots : parkingSlots // ignore: cast_nullable_to_non_nullable
as List<ParkingSlotModel>,
  ));
}


}

// dart format on
