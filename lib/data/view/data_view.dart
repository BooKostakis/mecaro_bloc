import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mecaro/data/cubit/data_state.dart';
import '../cubit/data_cubit.dart';

class DataView extends StatelessWidget {
  const DataView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DataCubit, DataState>(
      builder: (context, state) {
        if (state is DataInitial) {
          return Center(
            child: ElevatedButton(
              onPressed: () {
                context.read<DataCubit>().readBinaryFile();
              },
              child: const Text('Connect'),
            ),
          );
        } else if (state is DataLoaded) {
          // Разбиваем текст на строки, заменяя $ на \n$
          final lines = state.data
              .replaceAll('\$', '\n\$')
              .split('\n')
              // Фильтруем строки, оставляя только те,
              // которые начинаются на $ или на A-Z
              .where((line) =>
                  line.startsWith('\$') &&
                  (line.length > 1 &&
                      line[1].compareTo('A') >= 0 &&
                      line[1].compareTo('Z') <= 0))
              .toList();

          return SingleChildScrollView(
            child: Column(
              children: lines
                  .map((line) =>
                      Text(line)) // Преобразуем каждую строку в виджет Text
                  .toList(),
            ),
          );
        } else if (state is DataError) {
          return Center(
            child: Text(state.message),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
