part of 'data_cubit.dart';

enum ConnectionStatus {
  connected,
  disconnected,
}

@freezed
class DataState with _$DataState {
  const factory DataState.initial({
    ConnectionStatus? status,
    @Default([]) List<String> lines,
    ByteData? bytes,
    // String? errorMessage,
  }) = _DataStateInitial;
}
