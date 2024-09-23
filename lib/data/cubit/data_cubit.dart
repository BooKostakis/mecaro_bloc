import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_state.dart';
part 'data_cubit.freezed.dart';

class DataCubit extends Cubit<DataState> {
  DataCubit() : super(const DataState.initial());

  Future<void> readBinaryFile() async {
    try {
      final bytes = await rootBundle.load('assets/dataset.bin');
      emit(state.copyWith(bytes: bytes));
    } catch (e) {
      // TODO: add error handling
    }
  }

  void connect() async {
    emit(
      state.copyWith(status: ConnectionStatus.connected),
    );
    await readMessages();
  }

  void disconnect() {
    emit(
      state.copyWith(
        status: ConnectionStatus.disconnected,
        lines: [],
      ),
    );
  }

  Future<void> readMessages() async {
    if (state.bytes == null) {
      await readBinaryFile();
    }

    if (state.bytes == null) {
      return;
    }

    final bytes = state.bytes!;

    String concatenatedChunk = '';

    for (int offset = 0; offset < bytes.lengthInBytes; offset += 16) {
      if (state.status == ConnectionStatus.disconnected) {
        return;
      }
      await Future.delayed(const Duration(milliseconds: 500));
      int length = (offset + 16 <= bytes.lengthInBytes)
          ? 16
          : bytes.lengthInBytes - offset;

      List<int> chunk16bytes = [];
      for (int i = 0; i < length; i++) {
        chunk16bytes.add(bytes.getUint8(offset + i));
      }

      concatenatedChunk += String.fromCharCodes(chunk16bytes);

      final lineStartPosition = concatenatedChunk.indexOf('\$G');

      final lineEndPosition = concatenatedChunk.indexOf('\n');

      String line = '';

      if (lineStartPosition == -1 && lineEndPosition != -1) {
        concatenatedChunk = concatenatedChunk.replaceAll('\n', '');
      }

      if (lineStartPosition != -1 && lineEndPosition != -1) {
        line = concatenatedChunk.substring(lineStartPosition, lineEndPosition);
        emit(state.copyWith(lines: state.lines + [line]));
        concatenatedChunk = concatenatedChunk.substring(lineEndPosition + 1);
      }
    }
  }
}
