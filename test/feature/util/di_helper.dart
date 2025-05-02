import 'package:mockito/annotations.dart';
import 'package:parking_demo/parking/presentation/bloc/parking_bloc.dart';

@GenerateNiceMocks([MockSpec<ParkingBloc>()])
void setupInjection() {
  //getIt.reset();
  //configureDependency(Enviroment.test.name);
  // getIt.registerFactory<ParkingBloc>(MockParkingBloc.new);
}
