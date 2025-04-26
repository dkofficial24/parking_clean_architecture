import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:parking_demo/localization/localization_hi.i69n.dart';
import 'package:parking_demo/parking/presentation/bloc/parking_bloc.dart';
import 'package:parking_demo/parking/presentation/bloc/parking_states.dart';

class AvailableSlotsScreen extends StatelessWidget {
  const AvailableSlotsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(const Localization_hi().title)),
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
            return switch (state) {
              ParkingInitial() => const SizedBox(),
              ParkingLoading() => const Center(
                child: CircularProgressIndicator(),
              ),
              ParkingError(:final error) => Center(child: Text(error)),
              ParkingLoaded(:final parkingSlots) => ListView.builder(
                itemCount: parkingSlots.length,
                itemBuilder: (context, index) {
                  final parkingSlot = parkingSlots[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(title: Text(parkingSlot.name)),
                  );
                },
              ),
            };
          },
        ),
      ),
    );
  }
}
