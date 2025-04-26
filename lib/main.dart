import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parking_demo/parking/presentation/bloc/parking_bloc.dart';
import 'package:parking_demo/parking/presentation/bloc/parking_events.dart';
import 'package:parking_demo/parking/presentation/bloc/parking_states.dart';

import 'parking/core/di/di_injection.dart';
import 'parking/presentation/views/available_booking_slots_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependency();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: BlocProvider<ParkingBloc>(
        create: (_)=>getIt<ParkingBloc>()..add(FetchedParking()),
        child: AvailableSlotsScreen()
      ),
    );
  }
}

