part of 'data_cubit.dart';

enum DataStateStatus {
  initial,
  parsingStarted,
  parsingStopped,
  parsingResumed,
  parsingFinished,
  // error
}

@freezed
class DataState with _$DataState {
  const factory DataState.initial({
    DataStateStatus? status,
    List<String>? lines,
    // String? errorMessage,
  }) = _DataStateInitial;
}
