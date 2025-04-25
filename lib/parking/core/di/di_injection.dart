import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:parking_demo/parking/core/constant/api_endpoints.dart';
import 'package:parking_demo/parking/data/data_sources/remote_parking_slot_data_source.dart';
import 'package:parking_demo/parking/data/repositories/parking_repository_impl.dart';
import 'package:parking_demo/parking/domain/use_cases/fetching_parking_slot.dart';
import 'package:parking_demo/parking/presentation/bloc/parking_bloc.dart';

final getIt = GetIt.instance;

void diInit() {
  getIt.registerLazySingleton(() => Dio(
      BaseOptions(
        baseUrl: ApiEndpoints.baseUrl,
        connectTimeout: Duration(seconds: 15),
        receiveTimeout: Duration(seconds: 15),
        headers: {
          'Authorization':'Bearer mysecrettoken123'
        }

      )
  ));

  getIt.registerLazySingleton(() => RemoteParkingSlotDataSource(getIt<Dio>()));

  getIt.registerLazySingleton(() => ParkingRepositoryImpl(getIt<RemoteParkingSlotDataSource>()));

  getIt.registerLazySingleton(() => FetchParkingSlot(getIt<ParkingRepositoryImpl>()));

  getIt.registerFactory(() => ParkingBloc(getIt<FetchParkingSlot>()));
}
