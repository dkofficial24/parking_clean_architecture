import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:parking_demo/parking/core/constant/api_endpoints.dart';
import 'package:parking_demo/parking/data/data_sources/remote_parking_slot_data_source.dart';
import 'package:parking_demo/parking/data/model/parking_slot_model.dart';

import 'parking_slot_data_source_test.mocks.dart';

@GenerateMocks([Dio])
void main() {
  late MockDio mockDio;
  late RemoteParkingSlotDataSource dataSource;
  setUpAll(() {
    mockDio = MockDio();
    dataSource = RemoteParkingSlotDataSource(mockDio);
  });

  final mockResponseData = [
    {
      "id": "1",
      "name": "Parking A",
      "locationName": "Sector 21",
      "isAvailable": true,
      "pricePerHour": 30.0,
      "totalCapacity": 50,
      "availableSlots": 25,
      "slotType": "Covered",
      "features": ["EV Charging", "CCTV", "Security Guard"],
      "imageUrl": "https://example.com/slot-a.jpg",
      "address": "123 Street, Sector 21, City",
      "location": {"latitude": 28.6139, "longitude": 77.2090},
      "timing": {"openingTime": 800, "closingTime": 2200},
    },
    {
      "id": "2",
      "name": "Parking B",
      "locationName": "Sector 10",
      "isAvailable": false,
      "pricePerHour": 20.0,
      "totalCapacity": 30,
      "availableSlots": 0,
      "slotType": "Open",
      "features": ["CCTV"],
      "imageUrl": "https://example.com/slot-b.jpg",
      "address": "456 Avenue, Sector 10, City",
      "location": {"latitude": 28.5355, "longitude": 77.3910},
      "timing": {"openingTime": 600, "closingTime": 2300},
    },
  ];

  test('should fetch list of slots ', () async {
    when(mockDio.get(ApiEndpoints.parkingSlots)).thenAnswer((_) async {
      return Response(
        requestOptions: RequestOptions(path: ApiEndpoints.parkingSlots),
        data: mockResponseData,
        statusCode: 200,
      );
    });

    final result = await dataSource.fetchAvailableParkingSlots();
    expect(result, isA<List<ParkingSlotModel>>());
  });
}
