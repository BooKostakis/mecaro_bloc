// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DataState {
  ConnectionStatus? get status => throw _privateConstructorUsedError;
  List<String> get lines => throw _privateConstructorUsedError;
  ByteData? get bytes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ConnectionStatus? status, List<String> lines, ByteData? bytes)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ConnectionStatus? status, List<String> lines, ByteData? bytes)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ConnectionStatus? status, List<String> lines, ByteData? bytes)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataStateInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataStateInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataStateInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of DataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataStateCopyWith<DataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataStateCopyWith<$Res> {
  factory $DataStateCopyWith(DataState value, $Res Function(DataState) then) =
      _$DataStateCopyWithImpl<$Res, DataState>;
  @useResult
  $Res call({ConnectionStatus? status, List<String> lines, ByteData? bytes});
}

/// @nodoc
class _$DataStateCopyWithImpl<$Res, $Val extends DataState>
    implements $DataStateCopyWith<$Res> {
  _$DataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? lines = null,
    Object? bytes = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ConnectionStatus?,
      lines: null == lines
          ? _value.lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bytes: freezed == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as ByteData?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataStateInitialImplCopyWith<$Res>
    implements $DataStateCopyWith<$Res> {
  factory _$$DataStateInitialImplCopyWith(_$DataStateInitialImpl value,
          $Res Function(_$DataStateInitialImpl) then) =
      __$$DataStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ConnectionStatus? status, List<String> lines, ByteData? bytes});
}

/// @nodoc
class __$$DataStateInitialImplCopyWithImpl<$Res>
    extends _$DataStateCopyWithImpl<$Res, _$DataStateInitialImpl>
    implements _$$DataStateInitialImplCopyWith<$Res> {
  __$$DataStateInitialImplCopyWithImpl(_$DataStateInitialImpl _value,
      $Res Function(_$DataStateInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of DataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? lines = null,
    Object? bytes = freezed,
  }) {
    return _then(_$DataStateInitialImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ConnectionStatus?,
      lines: null == lines
          ? _value._lines
          : lines // ignore: cast_nullable_to_non_nullable
              as List<String>,
      bytes: freezed == bytes
          ? _value.bytes
          : bytes // ignore: cast_nullable_to_non_nullable
              as ByteData?,
    ));
  }
}

/// @nodoc

class _$DataStateInitialImpl implements _DataStateInitial {
  const _$DataStateInitialImpl(
      {this.status, final List<String> lines = const [], this.bytes})
      : _lines = lines;

  @override
  final ConnectionStatus? status;
  final List<String> _lines;
  @override
  @JsonKey()
  List<String> get lines {
    if (_lines is EqualUnmodifiableListView) return _lines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lines);
  }

  @override
  final ByteData? bytes;

  @override
  String toString() {
    return 'DataState.initial(status: $status, lines: $lines, bytes: $bytes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataStateInitialImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._lines, _lines) &&
            (identical(other.bytes, bytes) || other.bytes == bytes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_lines), bytes);

  /// Create a copy of DataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataStateInitialImplCopyWith<_$DataStateInitialImpl> get copyWith =>
      __$$DataStateInitialImplCopyWithImpl<_$DataStateInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ConnectionStatus? status, List<String> lines, ByteData? bytes)
        initial,
  }) {
    return initial(status, lines, bytes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            ConnectionStatus? status, List<String> lines, ByteData? bytes)?
        initial,
  }) {
    return initial?.call(status, lines, bytes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            ConnectionStatus? status, List<String> lines, ByteData? bytes)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(status, lines, bytes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataStateInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataStateInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataStateInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _DataStateInitial implements DataState {
  const factory _DataStateInitial(
      {final ConnectionStatus? status,
      final List<String> lines,
      final ByteData? bytes}) = _$DataStateInitialImpl;

  @override
  ConnectionStatus? get status;
  @override
  List<String> get lines;
  @override
  ByteData? get bytes;

  /// Create a copy of DataState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataStateInitialImplCopyWith<_$DataStateInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
