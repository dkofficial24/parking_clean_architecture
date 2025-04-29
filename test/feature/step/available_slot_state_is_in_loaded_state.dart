import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:parking_demo/parking/core/di/di_injection.dart';
import 'package:parking_demo/parking/data/model/location_model.dart';
import 'package:parking_demo/parking/data/model/parking_slot_model.dart';
import 'package:parking_demo/parking/data/model/timing_model.dart';
import 'package:parking_demo/parking/presentation/bloc/parking_states.dart';

import '../util/di_helper.mocks.dart';

/// Usage: available slot state is in loaded state
Future<void> availableSlotStateIsInLoadedState(WidgetTester tester) async {
  final List<ParkingSlotModel> dummyParkingSlots = [
    ParkingSlotModel(
      id: 'slot_1',
      name: 'Central Mall Parking',
      locationName: 'Central Mall',
      isAvailable: true,
      pricePerHour: 30.0,
      totalCapacity: 100,
      availableSlots: 20,
      slotType: 'Open',
      features: ['CCTV', 'EV Charging', 'Disabled Access'],
      imageUrl: 'https://example.com/images/parking1.jpg',
      address: '123 Main Street, New Delhi',
      location: LocationModel(latitude: 28.6139, longitude: 77.2090),
      timing: TimingModel(openingTime: 800, closingTime: 2200),
    ),
    ParkingSlotModel(
      id: 'slot_2',
      name: 'Metro Station Parking',
      locationName: 'City Metro Station',
      isAvailable: false,
      pricePerHour: 20.0,
      totalCapacity: 50,
      availableSlots: 0,
      slotType: 'Covered',
      features: ['Security', 'Covered', 'Restrooms'],
      imageUrl: 'https://example.com/images/parking2.jpg',
      address: 'Metro Road, Gurgaon',
      location: LocationModel(latitude: 28.4595, longitude: 77.0266),
      timing: TimingModel(openingTime: 600, closingTime: 2300),
    ),
    ParkingSlotModel(
      id: 'slot_3',
      name: 'Airport Parking',
      locationName: 'IGI Airport',
      isAvailable: true,
      pricePerHour: 50.0,
      totalCapacity: 200,
      availableSlots: 45,
      slotType: 'Multi-level',
      features: ['Security', 'EV Charging', 'Valet'],
      imageUrl: 'https://example.com/images/parking3.jpg',
      address: 'IGI Airport Terminal 3, Delhi',
      location: LocationModel(latitude: 28.5562, longitude: 77.1000),
      timing: TimingModel(openingTime: 0, closingTime: 2400),
    ),
  ];

  when(
    getIt<MockParkingBloc>().state,
  ).thenReturn(ParkingLoaded(dummyParkingSlots));
}
