import 'package:parking_demo/parking/data/model/parking_slot_model.dart';
import 'package:parking_demo/parking/domain/repositories/parking_repository.dart';

class FetchParkingSlot {
  final ParkingRepository parkingRepository;

  FetchParkingSlot(this.parkingRepository);

  Future<List<ParkingSlotModel>> call() {
    return parkingRepository.fetchAvailableParkingSlots();
  }
}
