// lib/domain/entities/parking_slot.dart


class ParkingSlotModel {
  final String id;
  final String name;
  final String locationName;
  final bool isAvailable;
  final double pricePerHour;
  final int totalCapacity;
  final int availableSlots;
  final String slotType;
  final List<String> features;
  final String imageUrl;
  final String address;
  final LocationModel location;
  final TimingModel timing;

  const ParkingSlotModel({
    required this.id,
    required this.name,
    required this.locationName,
    required this.isAvailable,
    required this.pricePerHour,
    required this.totalCapacity,
    required this.availableSlots,
    required this.slotType,
    required this.features,
    required this.imageUrl,
    required this.address,
    required this.location,
    required this.timing,
  });

  factory ParkingSlotModel.fromJson(Map<String, dynamic> json) {
    return ParkingSlotModel(
      id: json['id'],
      name: json['name'],
      locationName: json['locationName'],
      isAvailable: json['isAvailable'],
      pricePerHour: json['pricePerHour'].toDouble(),
      totalCapacity: json['totalCapacity'],
      availableSlots: json['availableSlots'],
      slotType: json['slotType'],
      features: List<String>.from(json['features']),
      imageUrl: json['imageUrl'],
      address: json['address'],
      location: LocationModel.fromJson(json['location']),
      timing: TimingModel.fromJson(json['timing']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'locationName': locationName,
      'isAvailable': isAvailable,
      'pricePerHour': pricePerHour,
      'totalCapacity': totalCapacity,
      'availableSlots': availableSlots,
      'slotType': slotType,
      'features': features,
      'imageUrl': imageUrl,
      'address': address,
      'location': location.toJson(),
      'timing': timing.toJson(),
    };
  }


  ParkingSlotModel copyWith({
    String? id,
    String? name,
    String? locationName,
    bool? isAvailable,
    double? pricePerHour,
    int? totalCapacity,
    int? availableSlots,
    String? slotType,
    List<String>? features,
    String? imageUrl,
    String? address,
    LocationModel? location,
    TimingModel? timing,
  }) {
    return ParkingSlotModel(
      id: id ?? this.id,
      name: name ?? this.name,
      locationName: locationName ?? this.locationName,
      isAvailable: isAvailable ?? this.isAvailable,
      pricePerHour: pricePerHour ?? this.pricePerHour,
      totalCapacity: totalCapacity ?? this.totalCapacity,
      availableSlots: availableSlots ?? this.availableSlots,
      slotType: slotType ?? this.slotType,
      features: features ?? this.features,
      imageUrl: imageUrl ?? this.imageUrl,
      address: address ?? this.address,
      location: location ?? this.location,
      timing: timing ?? this.timing,
    );
  }
}

class LocationModel {
  final double latitude;
  final double longitude;

  const LocationModel({
    required this.latitude,
    required this.longitude,
  });

  factory LocationModel.fromJson(Map<String, dynamic> json) {
    return LocationModel(
      latitude: json['latitude'].toDouble(),
      longitude: json['longitude'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  LocationModel copyWith({
    double? latitude,
    double? longitude,
  }) {
    return LocationModel(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }
}

class TimingModel {
  final int openingTime;
  final int closingTime;

  const TimingModel({
    required this.openingTime,
    required this.closingTime,
  });

  factory TimingModel.fromJson(Map<String, dynamic> json) {
    return TimingModel(
      openingTime: json['openingTime'],
      closingTime: json['closingTime'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'openingTime': openingTime,
      'closingTime': closingTime,
    };
  }

  TimingModel copyWith({
    int? openingTime,
    int? closingTime,
  }) {
    return TimingModel(
      openingTime: openingTime ?? this.openingTime,
      closingTime: closingTime ?? this.closingTime,
    );
  }
}
