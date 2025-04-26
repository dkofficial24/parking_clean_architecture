import 'package:injectable/injectable.dart';
import 'package:parking_demo/parking/core/constant/api_endpoints.dart';
import 'package:parking_demo/parking/core/network/dio_client.dart';
import 'package:parking_demo/parking/data/data_sources/parking_slot_data_source.dart';
import 'package:parking_demo/parking/data/model/parking_slot_model.dart';

@LazySingleton(as: ParkingSlotDataSource)
class RemoteParkingSlotDataSource implements ParkingSlotDataSource {
  final DioClient dioClient;

  RemoteParkingSlotDataSource(this.dioClient);

  @override
  Future<List<ParkingSlotModel>> fetchAvailableParkingSlots() async {
    final response = await dioClient.dio.get(ApiEndpoints.parkingSlots);
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
