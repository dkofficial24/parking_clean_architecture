import 'package:parking_demo/parking/data/model/parking_slot_model.dart';

abstract class ParkingRepository {
  Future<List<ParkingSlotModel>> fetchAvailableParkingSlots();
}
