import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:parking_demo/parking/core/errors.dart';
import 'package:parking_demo/parking/data/model/parking_slot_model.dart';
import 'package:parking_demo/parking/data/repositories/parking_repository_impl.dart';
import 'package:parking_demo/parking/domain/use_cases/fetch_parking_slot.dart';

import 'fetch_parking_slot_test.mocks.dart';

@GenerateMocks([ParkingRepositoryImpl])
void main() {
  late FetchParkingSlot fetchParkingSlot;
  late MockParkingRepositoryImpl parkingRepositoryMock;

  setUpAll(() {
    parkingRepositoryMock = MockParkingRepositoryImpl();
    fetchParkingSlot = FetchParkingSlot(parkingRepositoryMock);
  });

  test('should call the fetch parking slot and return empty list', () async {
    //arrange
    when(parkingRepositoryMock.fetchAvailableParkingSlots()).thenAnswer((
      _,
    ) async {
      return <ParkingSlotModel>[];
    });
    //act
    final result = await fetchParkingSlot();
    //asserts
    expect(result, []);
    verify(parkingRepositoryMock.fetchAvailableParkingSlots()).called(1);
    verifyNoMoreInteractions(parkingRepositoryMock);
  });

  test('should call the fetch parking slot and return data list', () async {
    List<ParkingSlotModel> mockDataList = [
      ParkingSlotModel(
        id: 'id',
        name: 'name',
        locationName: 'locationName',
        isAvailable: true,
        pricePerHour: 11,
        totalCapacity: 11,
        availableSlots: 12,
        slotType: 'slotType',
        features: ['a', 'b'],
        imageUrl: 'url',
        address: '',
        location: LocationModel(latitude: 121, longitude: 432),
        timing: TimingModel(openingTime: 12, closingTime: 4),
      ),
    ];

    //arrange
    when(parkingRepositoryMock.fetchAvailableParkingSlots()).thenAnswer((
      _,
    ) async {
      return mockDataList;
    });
    //act
    final result = await fetchParkingSlot();
    //asserts
    expect(result, mockDataList);
    verify(parkingRepositoryMock.fetchAvailableParkingSlots()).called(1);
    verifyNoMoreInteractions(parkingRepositoryMock);
  });

  test('should call the fetch parking slot and throw Exception', () async {
    //arrange
    when(
      parkingRepositoryMock.fetchAvailableParkingSlots(),
    ).thenThrow(ParkingFetchException());
    //act
    //asserts
    expect(() async {
      await fetchParkingSlot();
    }, throwsA(isA<ParkingFetchException>()));
    verify(parkingRepositoryMock.fetchAvailableParkingSlots()).called(1);
    verifyNoMoreInteractions(parkingRepositoryMock);
  });
}
