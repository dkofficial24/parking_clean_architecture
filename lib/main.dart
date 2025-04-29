import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart' as Evnironment;
import 'package:parking_demo/parking/presentation/bloc/parking_bloc.dart';
import 'package:parking_demo/parking/presentation/bloc/parking_events.dart';

import 'localization/localization.i69n.dart';
import 'parking/core/di/di_injection.dart';
import 'parking/presentation/views/available_booking_slots_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependency(Evnironment.test.name);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: const Localization().title,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: BlocProvider<ParkingBloc>(
        create: (_) => getIt<ParkingBloc>()..add(FetchedParking()),
        child: const AvailableSlotsScreen(),
      ),
    );
  }
}
