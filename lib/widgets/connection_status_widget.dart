import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mecaro/data/cubit/data_cubit.dart';

class ConnectionStatusWidget extends StatelessWidget {
  const ConnectionStatusWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Indicator(),
            SizedBox(
              width: 10,
            ),
            Text(
              'Connection status:',
            ),
            SizedBox(
              width: 10,
            ),
            Indicator(),
          ],
        ),
        BlocBuilder<DataCubit, DataState>(
          builder: (context, state) => Text(
            state.status == ConnectionStatus.connected
                ? 'connected'
                : 'disconnected',
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class Indicator extends StatelessWidget {
  const Indicator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DataCubit, DataState>(
      builder: (context, state) => Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: state.status == ConnectionStatus.connected
              ? Colors.green
              : Colors.red,
        ),
      ),
    );
  }
}
