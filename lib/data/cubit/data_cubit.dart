import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_state.dart';
part 'data_cubit.freezed.dart';

class DataCubit extends Cubit<DataState> {
  DataCubit() : super(const DataState.initial());

  Future<void> readBinaryFile() async {
    try {
      // Получаем путь к файлу в assets
      final bytes = await rootBundle.load('assets/dataset.bin');

      for (int offset = 0; offset < bytes.lengthInBytes; offset += 16) {
        await Future.delayed(const Duration(milliseconds: 1000));
        int length = (offset + 16 <= bytes.lengthInBytes)
            ? 16
            : bytes.lengthInBytes - offset;
        print('Chunk starting at byte $offset:');

        String chunk = '';
        for (int i = 0; i < length; i++) {
          print(bytes.getUint8(offset + i));

          chunk += String.fromCharCodes(bytes. .buffer.asUint8List());
          print('Chunk теперь: $chunk');
        }

        print('---');
      }

      // Преобразуем bytes в строку, чтобы было проще работать с данными.
      final stringData = String.fromCharCodes(bytes.buffer.asUint8List());
      // Теперь у нас есть stringData, которую можно парсить.
      final lines = stringData
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
    } catch (e) {
      // Обрабатываем ошибку при чтении файла
      // emit(DataError(message: 'Ошибка при чтении файла: ${e.toString()}'));
    }
  }
}




// class DataCubit extends Cubit<DataState> {
//   DataCubit() : super(DataInitial());

//   Future<void> readBinaryFile() async {
//     try {
//       // Получаем путь к файлу в assets
//       final bytes = await rootBundle.load('assets/dataset.bin');


//       // Преобразуем bytes в строку, чтобы было проще работать с данными.
//       final stringData = String.fromCharCodes(bytes.buffer.asUint8List());

//       // Теперь у нас есть stringData, которую можно парсить.
//       emit(DataLoaded(data: stringData));
//     } catch (e) {
//       // Обрабатываем ошибку при чтении файла
//       emit(DataError(message: 'Ошибка при чтении файла: ${e.toString()}'));
//     }
//   }
// }
