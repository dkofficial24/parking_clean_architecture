import 'package:mockito/annotations.dart';
import 'package:parking_demo/parking/core/di/di_injection.dart';
import 'package:parking_demo/parking/presentation/bloc/parking_bloc.dart';

import 'di_helper.mocks.dart';

@GenerateNiceMocks([MockSpec<ParkingBloc>()])
void setupInjection() {
  getIt.reset();
  //configureDependency(Enviroment.test.name);
  getIt.registerFactory<ParkingBloc>(MockParkingBloc.new);
}
