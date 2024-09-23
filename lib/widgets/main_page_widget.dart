import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mecaro/data/cubit/data_cubit.dart';
import 'package:mecaro/widgets/connection_status_widget.dart';
import 'package:mecaro/widgets/incomming_messages_widget.dart';

class MainPageWidget extends StatelessWidget {
  const MainPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ConnectionStatusWidget(),
            const SizedBox(height: 8),
            BlocBuilder<DataCubit, DataState>(
              builder: (context, state) => ElevatedButton(
                onPressed: () => state.status == ConnectionStatus.connected
                    ? context.read<DataCubit>().disconnect()
                    : context.read<DataCubit>().connect(),
                child: Text(
                  state.status == ConnectionStatus.connected
                      ? 'Disconnect'
                      : 'Connect',
                ),
              ),
            ),
            const SizedBox(height: 20),
            const IncomingMessagesWidget(),
          ],
        ),
      ),
    );
  }
}
