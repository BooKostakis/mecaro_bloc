abstract class DataState {}

class DataInitial extends DataState {}

class DataLoaded extends DataState {
  final String data;
  DataLoaded({required this.data});
}

class DataError extends DataState {
  final String message;
  DataError({required this.message});
}
