// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'parking_slot_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParkingSlotModel {

 String get id; String get name; String get locationName; bool get isAvailable; double get pricePerHour; int get totalCapacity; int get availableSlots; String get slotType; List<String> get features; String get imageUrl; String get address; LocationModel get location; TimingModel get timing;
/// Create a copy of ParkingSlotModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParkingSlotModelCopyWith<ParkingSlotModel> get copyWith => _$ParkingSlotModelCopyWithImpl<ParkingSlotModel>(this as ParkingSlotModel, _$identity);

  /// Serializes this ParkingSlotModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParkingSlotModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.pricePerHour, pricePerHour) || other.pricePerHour == pricePerHour)&&(identical(other.totalCapacity, totalCapacity) || other.totalCapacity == totalCapacity)&&(identical(other.availableSlots, availableSlots) || other.availableSlots == availableSlots)&&(identical(other.slotType, slotType) || other.slotType == slotType)&&const DeepCollectionEquality().equals(other.features, features)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.address, address) || other.address == address)&&(identical(other.location, location) || other.location == location)&&(identical(other.timing, timing) || other.timing == timing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,locationName,isAvailable,pricePerHour,totalCapacity,availableSlots,slotType,const DeepCollectionEquality().hash(features),imageUrl,address,location,timing);

@override
String toString() {
  return 'ParkingSlotModel(id: $id, name: $name, locationName: $locationName, isAvailable: $isAvailable, pricePerHour: $pricePerHour, totalCapacity: $totalCapacity, availableSlots: $availableSlots, slotType: $slotType, features: $features, imageUrl: $imageUrl, address: $address, location: $location, timing: $timing)';
}


}

/// @nodoc
abstract mixin class $ParkingSlotModelCopyWith<$Res>  {
  factory $ParkingSlotModelCopyWith(ParkingSlotModel value, $Res Function(ParkingSlotModel) _then) = _$ParkingSlotModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String locationName, bool isAvailable, double pricePerHour, int totalCapacity, int availableSlots, String slotType, List<String> features, String imageUrl, String address, LocationModel location, TimingModel timing
});


$LocationModelCopyWith<$Res> get location;$TimingModelCopyWith<$Res> get timing;

}
/// @nodoc
class _$ParkingSlotModelCopyWithImpl<$Res>
    implements $ParkingSlotModelCopyWith<$Res> {
  _$ParkingSlotModelCopyWithImpl(this._self, this._then);

  final ParkingSlotModel _self;
  final $Res Function(ParkingSlotModel) _then;

/// Create a copy of ParkingSlotModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? locationName = null,Object? isAvailable = null,Object? pricePerHour = null,Object? totalCapacity = null,Object? availableSlots = null,Object? slotType = null,Object? features = null,Object? imageUrl = null,Object? address = null,Object? location = null,Object? timing = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,locationName: null == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,pricePerHour: null == pricePerHour ? _self.pricePerHour : pricePerHour // ignore: cast_nullable_to_non_nullable
as double,totalCapacity: null == totalCapacity ? _self.totalCapacity : totalCapacity // ignore: cast_nullable_to_non_nullable
as int,availableSlots: null == availableSlots ? _self.availableSlots : availableSlots // ignore: cast_nullable_to_non_nullable
as int,slotType: null == slotType ? _self.slotType : slotType // ignore: cast_nullable_to_non_nullable
as String,features: null == features ? _self.features : features // ignore: cast_nullable_to_non_nullable
as List<String>,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationModel,timing: null == timing ? _self.timing : timing // ignore: cast_nullable_to_non_nullable
as TimingModel,
  ));
}
/// Create a copy of ParkingSlotModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationModelCopyWith<$Res> get location {
  
  return $LocationModelCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of ParkingSlotModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimingModelCopyWith<$Res> get timing {
  
  return $TimingModelCopyWith<$Res>(_self.timing, (value) {
    return _then(_self.copyWith(timing: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _ParkingSlotModel implements ParkingSlotModel {
  const _ParkingSlotModel({required this.id, required this.name, required this.locationName, required this.isAvailable, required this.pricePerHour, required this.totalCapacity, required this.availableSlots, required this.slotType, required final  List<String> features, required this.imageUrl, required this.address, required this.location, required this.timing}): _features = features;
  factory _ParkingSlotModel.fromJson(Map<String, dynamic> json) => _$ParkingSlotModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String locationName;
@override final  bool isAvailable;
@override final  double pricePerHour;
@override final  int totalCapacity;
@override final  int availableSlots;
@override final  String slotType;
 final  List<String> _features;
@override List<String> get features {
  if (_features is EqualUnmodifiableListView) return _features;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_features);
}

@override final  String imageUrl;
@override final  String address;
@override final  LocationModel location;
@override final  TimingModel timing;

/// Create a copy of ParkingSlotModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParkingSlotModelCopyWith<_ParkingSlotModel> get copyWith => __$ParkingSlotModelCopyWithImpl<_ParkingSlotModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParkingSlotModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParkingSlotModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable)&&(identical(other.pricePerHour, pricePerHour) || other.pricePerHour == pricePerHour)&&(identical(other.totalCapacity, totalCapacity) || other.totalCapacity == totalCapacity)&&(identical(other.availableSlots, availableSlots) || other.availableSlots == availableSlots)&&(identical(other.slotType, slotType) || other.slotType == slotType)&&const DeepCollectionEquality().equals(other._features, _features)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.address, address) || other.address == address)&&(identical(other.location, location) || other.location == location)&&(identical(other.timing, timing) || other.timing == timing));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,locationName,isAvailable,pricePerHour,totalCapacity,availableSlots,slotType,const DeepCollectionEquality().hash(_features),imageUrl,address,location,timing);

@override
String toString() {
  return 'ParkingSlotModel(id: $id, name: $name, locationName: $locationName, isAvailable: $isAvailable, pricePerHour: $pricePerHour, totalCapacity: $totalCapacity, availableSlots: $availableSlots, slotType: $slotType, features: $features, imageUrl: $imageUrl, address: $address, location: $location, timing: $timing)';
}


}

/// @nodoc
abstract mixin class _$ParkingSlotModelCopyWith<$Res> implements $ParkingSlotModelCopyWith<$Res> {
  factory _$ParkingSlotModelCopyWith(_ParkingSlotModel value, $Res Function(_ParkingSlotModel) _then) = __$ParkingSlotModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String locationName, bool isAvailable, double pricePerHour, int totalCapacity, int availableSlots, String slotType, List<String> features, String imageUrl, String address, LocationModel location, TimingModel timing
});


@override $LocationModelCopyWith<$Res> get location;@override $TimingModelCopyWith<$Res> get timing;

}
/// @nodoc
class __$ParkingSlotModelCopyWithImpl<$Res>
    implements _$ParkingSlotModelCopyWith<$Res> {
  __$ParkingSlotModelCopyWithImpl(this._self, this._then);

  final _ParkingSlotModel _self;
  final $Res Function(_ParkingSlotModel) _then;

/// Create a copy of ParkingSlotModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? locationName = null,Object? isAvailable = null,Object? pricePerHour = null,Object? totalCapacity = null,Object? availableSlots = null,Object? slotType = null,Object? features = null,Object? imageUrl = null,Object? address = null,Object? location = null,Object? timing = null,}) {
  return _then(_ParkingSlotModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,locationName: null == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,pricePerHour: null == pricePerHour ? _self.pricePerHour : pricePerHour // ignore: cast_nullable_to_non_nullable
as double,totalCapacity: null == totalCapacity ? _self.totalCapacity : totalCapacity // ignore: cast_nullable_to_non_nullable
as int,availableSlots: null == availableSlots ? _self.availableSlots : availableSlots // ignore: cast_nullable_to_non_nullable
as int,slotType: null == slotType ? _self.slotType : slotType // ignore: cast_nullable_to_non_nullable
as String,features: null == features ? _self._features : features // ignore: cast_nullable_to_non_nullable
as List<String>,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationModel,timing: null == timing ? _self.timing : timing // ignore: cast_nullable_to_non_nullable
as TimingModel,
  ));
}

/// Create a copy of ParkingSlotModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationModelCopyWith<$Res> get location {
  
  return $LocationModelCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of ParkingSlotModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TimingModelCopyWith<$Res> get timing {
  
  return $TimingModelCopyWith<$Res>(_self.timing, (value) {
    return _then(_self.copyWith(timing: value));
  });
}
}

// dart format on
