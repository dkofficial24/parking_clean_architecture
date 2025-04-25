import 'package:dio/dio.dart';
import 'package:parking_demo/parking/core/constant/api_endpoints.dart';
import 'package:parking_demo/parking/data/data_sources/parking_slot_data_source.dart';
import 'package:parking_demo/parking/data/model/parking_slot_model.dart';

class RemoteParkingSlotDataSource implements ParkingSlotDataSource {
  final Dio dio;

  RemoteParkingSlotDataSource(this.dio);

  @override
  Future<List<ParkingSlotModel>> fetchAvailableParkingSlots() async {
    final response = await dio.get(ApiEndpoints.parkingSlots);
    if (response.statusCode == 200) {
      final data = response.data as List;
      return data.map((element) {
        return ParkingSlotModel.fromJson(element);
      }).toList();
    } else {
      throw Exception('Something went wrong');
    }
  }
}
