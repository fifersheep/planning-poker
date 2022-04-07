// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'participant_vote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ParticipantVoteModelTearOff {
  const _$ParticipantVoteModelTearOff();

  _ParticipantVoteModel call({required String name, required String vote}) {
    return _ParticipantVoteModel(
      name: name,
      vote: vote,
    );
  }
}

/// @nodoc
const $ParticipantVoteModel = _$ParticipantVoteModelTearOff();

/// @nodoc
mixin _$ParticipantVoteModel {
  String get name => throw _privateConstructorUsedError;
  String get vote => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ParticipantVoteModelCopyWith<ParticipantVoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantVoteModelCopyWith<$Res> {
  factory $ParticipantVoteModelCopyWith(ParticipantVoteModel value,
          $Res Function(ParticipantVoteModel) then) =
      _$ParticipantVoteModelCopyWithImpl<$Res>;
  $Res call({String name, String vote});
}

/// @nodoc
class _$ParticipantVoteModelCopyWithImpl<$Res>
    implements $ParticipantVoteModelCopyWith<$Res> {
  _$ParticipantVoteModelCopyWithImpl(this._value, this._then);

  final ParticipantVoteModel _value;
  // ignore: unused_field
  final $Res Function(ParticipantVoteModel) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? vote = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      vote: vote == freezed
          ? _value.vote
          : vote // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ParticipantVoteModelCopyWith<$Res>
    implements $ParticipantVoteModelCopyWith<$Res> {
  factory _$ParticipantVoteModelCopyWith(_ParticipantVoteModel value,
          $Res Function(_ParticipantVoteModel) then) =
      __$ParticipantVoteModelCopyWithImpl<$Res>;
  @override
  $Res call({String name, String vote});
}

/// @nodoc
class __$ParticipantVoteModelCopyWithImpl<$Res>
    extends _$ParticipantVoteModelCopyWithImpl<$Res>
    implements _$ParticipantVoteModelCopyWith<$Res> {
  __$ParticipantVoteModelCopyWithImpl(
      _ParticipantVoteModel _value, $Res Function(_ParticipantVoteModel) _then)
      : super(_value, (v) => _then(v as _ParticipantVoteModel));

  @override
  _ParticipantVoteModel get _value => super._value as _ParticipantVoteModel;

  @override
  $Res call({
    Object? name = freezed,
    Object? vote = freezed,
  }) {
    return _then(_ParticipantVoteModel(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      vote: vote == freezed
          ? _value.vote
          : vote // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ParticipantVoteModel implements _ParticipantVoteModel {
  const _$_ParticipantVoteModel({required this.name, required this.vote});

  @override
  final String name;
  @override
  final String vote;

  @override
  String toString() {
    return 'ParticipantVoteModel(name: $name, vote: $vote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ParticipantVoteModel &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.vote, vote));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(vote));

  @JsonKey(ignore: true)
  @override
  _$ParticipantVoteModelCopyWith<_ParticipantVoteModel> get copyWith =>
      __$ParticipantVoteModelCopyWithImpl<_ParticipantVoteModel>(
          this, _$identity);
}

abstract class _ParticipantVoteModel implements ParticipantVoteModel {
  const factory _ParticipantVoteModel(
      {required String name, required String vote}) = _$_ParticipantVoteModel;

  @override
  String get name;
  @override
  String get vote;
  @override
  @JsonKey(ignore: true)
  _$ParticipantVoteModelCopyWith<_ParticipantVoteModel> get copyWith =>
      throw _privateConstructorUsedError;
}
