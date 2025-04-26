import 'package:injectable/injectable.dart';
import 'package:parking_demo/parking/data/data_sources/parking_slot_data_source.dart';
import 'package:parking_demo/parking/data/model/parking_slot_model.dart';
import 'package:parking_demo/parking/domain/repositories/parking_repository.dart';

@LazySingleton(as: ParkingRepository)
class ParkingRepositoryImpl implements ParkingRepository {
  ParkingRepositoryImpl(this.parkingSlotDataSource);

  final ParkingSlotDataSource parkingSlotDataSource;

  @override
  Future<List<ParkingSlotModel>> fetchAvailableParkingSlots() {
    return parkingSlotDataSource.fetchAvailableParkingSlots();
  }
}
