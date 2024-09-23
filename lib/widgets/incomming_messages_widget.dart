import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mecaro/data/cubit/data_cubit.dart';
import 'package:mecaro/widgets/deciphered_message_page.dart';

class IncomingMessagesWidget extends StatelessWidget {
  const IncomingMessagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DataCubit, DataState>(builder: (context, state) {
      final widgets = state.lines
          .map(
            (line) => Card(
              child: ListTile(
                title: Text(line),
                trailing: line == '\$GPGSV,1,1,00*79'
                    ? OutlinedButton(
                        child: const Text('Decipher'),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DecipheredMessagePage(),
                          ),
                        ),
                      )
                    : null,
              ),
            ),
          )
          .toList();

      return state.lines.isNotEmpty
          ? Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 240, 240),
                    borderRadius: BorderRadius.circular(
                        15), // Adjust the radius as needed
                  ),
                  child: const Center(
                    child: Text('Incoming messages:'),
                  ),
                ),
                const SizedBox(height: 10),
                ...widgets

                // Text(
                //   state.lines.join('\n'),
                //   textAlign: TextAlign.center,
                // ),
              ],
            )
          : state.lines.isEmpty && state.status == ConnectionStatus.connected
              ? const Column(
                  children: [
                    CircularProgressIndicator(),
                    Text('Waiting for incoming messages...')
                  ],
                )
              : const SizedBox.shrink();
    });
  }
}
