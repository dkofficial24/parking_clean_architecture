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
        body: BlocListener<ParkingBloc, ParkingState>(
          listener: (context, state) {
            if (state is ParkingError) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.error)));
            }
          },
          child: BlocBuilder<ParkingBloc, ParkingState>(
            builder: (context, state) {
              if (state is ParkingLoading) {
                return const Center(child: CircularProgressIndicator());
              }

              if (state is ParkingError) {
                return Center(child: Text(state.error));
              }
              if (state is ParkingLoaded) {
                return ListView.builder(
                  itemCount: (state).parkingSlots.length,
                  itemBuilder: (context, index) {
                    final parkingSlot = state.parkingSlots[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(title: Text(parkingSlot.name)),
                    );
                  },
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ),
      ),
    );
  }
}
