import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parking_demo/parking/core/di/di_injection.dart';
import 'package:parking_demo/parking/presentation/bloc/parking_bloc.dart';
import 'package:parking_demo/parking/presentation/bloc/parking_events.dart';
import 'package:parking_demo/parking/presentation/bloc/parking_states.dart';

class AvailableSlotsScreen extends StatelessWidget {
  const AvailableSlotsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        return getIt<ParkingBloc>()..add(FetchedParking());
      },
      child: Scaffold(
        appBar: AppBar(title: Text('Available Slots')),
        body: BlocBuilder<ParkingBloc, ParkingState>(
          builder: (context, state) {
            if (state is ParkingLoading || state is ParkingInitial) {
              return Center(child: CircularProgressIndicator());
            }

            if (state is ParkingError) {
              return Center(child: Text(state.error));
            }

            return ListView.builder(
              itemCount: (state as ParkingLoaded).parkingSlots.length,
              itemBuilder: (context, index) {
                final parkingSlot =
                    state.parkingSlots[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(title: Text(parkingSlot.name)),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
