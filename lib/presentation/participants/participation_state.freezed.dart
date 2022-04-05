// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'participation_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ParticipationStateTearOff {
  const _$ParticipationStateTearOff();

  Loading loading() {
    return const Loading();
  }

  ParticipantFound found(int participantId) {
    return ParticipantFound(
      participantId,
    );
  }

  ParticipantNotFound notFound() {
    return const ParticipantNotFound();
  }
}

/// @nodoc
const $ParticipationState = _$ParticipationStateTearOff();

/// @nodoc
mixin _$ParticipationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int participantId) found,
    required TResult Function() notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int participantId)? found,
    TResult Function()? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int participantId)? found,
    TResult Function()? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(ParticipantFound value) found,
    required TResult Function(ParticipantNotFound value) notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ParticipantFound value)? found,
    TResult Function(ParticipantNotFound value)? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ParticipantFound value)? found,
    TResult Function(ParticipantNotFound value)? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipationStateCopyWith<$Res> {
  factory $ParticipationStateCopyWith(
          ParticipationState value, $Res Function(ParticipationState) then) =
      _$ParticipationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParticipationStateCopyWithImpl<$Res>
    implements $ParticipationStateCopyWith<$Res> {
  _$ParticipationStateCopyWithImpl(this._value, this._then);

  final ParticipationState _value;
  // ignore: unused_field
  final $Res Function(ParticipationState) _then;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$ParticipationStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'ParticipationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int participantId) found,
    required TResult Function() notFound,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int participantId)? found,
    TResult Function()? notFound,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int participantId)? found,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(ParticipantFound value) found,
    required TResult Function(ParticipantNotFound value) notFound,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ParticipantFound value)? found,
    TResult Function(ParticipantNotFound value)? notFound,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ParticipantFound value)? found,
    TResult Function(ParticipantNotFound value)? notFound,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ParticipationState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $ParticipantFoundCopyWith<$Res> {
  factory $ParticipantFoundCopyWith(
          ParticipantFound value, $Res Function(ParticipantFound) then) =
      _$ParticipantFoundCopyWithImpl<$Res>;
  $Res call({int participantId});
}

/// @nodoc
class _$ParticipantFoundCopyWithImpl<$Res>
    extends _$ParticipationStateCopyWithImpl<$Res>
    implements $ParticipantFoundCopyWith<$Res> {
  _$ParticipantFoundCopyWithImpl(
      ParticipantFound _value, $Res Function(ParticipantFound) _then)
      : super(_value, (v) => _then(v as ParticipantFound));

  @override
  ParticipantFound get _value => super._value as ParticipantFound;

  @override
  $Res call({
    Object? participantId = freezed,
  }) {
    return _then(ParticipantFound(
      participantId == freezed
          ? _value.participantId
          : participantId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ParticipantFound implements ParticipantFound {
  const _$ParticipantFound(this.participantId);

  @override
  final int participantId;

  @override
  String toString() {
    return 'ParticipationState.found(participantId: $participantId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ParticipantFound &&
            const DeepCollectionEquality()
                .equals(other.participantId, participantId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(participantId));

  @JsonKey(ignore: true)
  @override
  $ParticipantFoundCopyWith<ParticipantFound> get copyWith =>
      _$ParticipantFoundCopyWithImpl<ParticipantFound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int participantId) found,
    required TResult Function() notFound,
  }) {
    return found(participantId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int participantId)? found,
    TResult Function()? notFound,
  }) {
    return found?.call(participantId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int participantId)? found,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (found != null) {
      return found(participantId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(ParticipantFound value) found,
    required TResult Function(ParticipantNotFound value) notFound,
  }) {
    return found(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ParticipantFound value)? found,
    TResult Function(ParticipantNotFound value)? notFound,
  }) {
    return found?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ParticipantFound value)? found,
    TResult Function(ParticipantNotFound value)? notFound,
    required TResult orElse(),
  }) {
    if (found != null) {
      return found(this);
    }
    return orElse();
  }
}

abstract class ParticipantFound implements ParticipationState {
  const factory ParticipantFound(int participantId) = _$ParticipantFound;

  int get participantId;
  @JsonKey(ignore: true)
  $ParticipantFoundCopyWith<ParticipantFound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantNotFoundCopyWith<$Res> {
  factory $ParticipantNotFoundCopyWith(
          ParticipantNotFound value, $Res Function(ParticipantNotFound) then) =
      _$ParticipantNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class _$ParticipantNotFoundCopyWithImpl<$Res>
    extends _$ParticipationStateCopyWithImpl<$Res>
    implements $ParticipantNotFoundCopyWith<$Res> {
  _$ParticipantNotFoundCopyWithImpl(
      ParticipantNotFound _value, $Res Function(ParticipantNotFound) _then)
      : super(_value, (v) => _then(v as ParticipantNotFound));

  @override
  ParticipantNotFound get _value => super._value as ParticipantNotFound;
}

/// @nodoc

class _$ParticipantNotFound implements ParticipantNotFound {
  const _$ParticipantNotFound();

  @override
  String toString() {
    return 'ParticipationState.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ParticipantNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int participantId) found,
    required TResult Function() notFound,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int participantId)? found,
    TResult Function()? notFound,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int participantId)? found,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(ParticipantFound value) found,
    required TResult Function(ParticipantNotFound value) notFound,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ParticipantFound value)? found,
    TResult Function(ParticipantNotFound value)? notFound,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(ParticipantFound value)? found,
    TResult Function(ParticipantNotFound value)? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class ParticipantNotFound implements ParticipationState {
  const factory ParticipantNotFound() = _$ParticipantNotFound;
}
