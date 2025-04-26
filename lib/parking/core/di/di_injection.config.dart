// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:parking_demo/parking/core/network/dio_client.dart' as _i358;
import 'package:parking_demo/parking/data/data_sources/parking_slot_data_source.dart'
    as _i301;
import 'package:parking_demo/parking/data/data_sources/remote_parking_slot_data_source.dart'
    as _i35;
import 'package:parking_demo/parking/data/repositories/parking_repository_impl.dart'
    as _i1069;
import 'package:parking_demo/parking/domain/repositories/parking_repository.dart'
    as _i131;
import 'package:parking_demo/parking/domain/use_cases/fetch_parking_slot.dart'
    as _i272;
import 'package:parking_demo/parking/presentation/bloc/parking_bloc.dart'
    as _i795;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i358.DioClient>(() => _i358.DioClient());
    gh.lazySingleton<_i301.ParkingSlotDataSource>(
      () => _i35.RemoteParkingSlotDataSource(gh<_i358.DioClient>()),
    );
    gh.lazySingleton<_i131.ParkingRepository>(
      () => _i1069.ParkingRepositoryImpl(gh<_i301.ParkingSlotDataSource>()),
    );
    gh.factory<_i272.FetchParkingSlot>(
      () => _i272.FetchParkingSlot(gh<_i131.ParkingRepository>()),
    );
    gh.factory<_i795.ParkingBloc>(
      () => _i795.ParkingBloc(gh<_i272.FetchParkingSlot>()),
    );
    return this;
  }
}
