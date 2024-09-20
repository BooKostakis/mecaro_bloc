import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data_state.dart';

class DataCubit extends Cubit<DataState> {
  DataCubit() : super(DataInitial());

  Future<void> readBinaryFile() async {
    try {
      // Получаем путь к файлу в assets
      final bytes = await rootBundle.load('assets/dataset.bin');

      // После успешного чтения файла, выводим сообщение в консоль
      print('Файл прочитан!');

      // Преобразуем bytes в строку, чтобы было проще работать с данными.
      final stringData = String.fromCharCodes(bytes.buffer.asUint8List());

      // Теперь у нас есть stringData, которую можно парсить.
      emit(DataLoaded(data: stringData));
    } catch (e) {
      // Обрабатываем ошибку при чтении файла
      emit(DataError(message: 'Ошибка при чтении файла: ${e.toString()}'));
    }
  }
}
