// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'participant_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ParticipantDto _$ParticipantDtoFromJson(Map<String, dynamic> json) {
  return _ParticipantDto.fromJson(json);
}

/// @nodoc
class _$ParticipantDtoTearOff {
  const _$ParticipantDtoTearOff();

  _ParticipantDto call({required String name, required int? vote}) {
    return _ParticipantDto(
      name: name,
      vote: vote,
    );
  }

  ParticipantDto fromJson(Map<String, Object?> json) {
    return ParticipantDto.fromJson(json);
  }
}

/// @nodoc
const $ParticipantDto = _$ParticipantDtoTearOff();

/// @nodoc
mixin _$ParticipantDto {
  String get name => throw _privateConstructorUsedError;
  int? get vote => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParticipantDtoCopyWith<ParticipantDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParticipantDtoCopyWith<$Res> {
  factory $ParticipantDtoCopyWith(
          ParticipantDto value, $Res Function(ParticipantDto) then) =
      _$ParticipantDtoCopyWithImpl<$Res>;
  $Res call({String name, int? vote});
}

/// @nodoc
class _$ParticipantDtoCopyWithImpl<$Res>
    implements $ParticipantDtoCopyWith<$Res> {
  _$ParticipantDtoCopyWithImpl(this._value, this._then);

  final ParticipantDto _value;
  // ignore: unused_field
  final $Res Function(ParticipantDto) _then;

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
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$ParticipantDtoCopyWith<$Res>
    implements $ParticipantDtoCopyWith<$Res> {
  factory _$ParticipantDtoCopyWith(
          _ParticipantDto value, $Res Function(_ParticipantDto) then) =
      __$ParticipantDtoCopyWithImpl<$Res>;
  @override
  $Res call({String name, int? vote});
}

/// @nodoc
class __$ParticipantDtoCopyWithImpl<$Res>
    extends _$ParticipantDtoCopyWithImpl<$Res>
    implements _$ParticipantDtoCopyWith<$Res> {
  __$ParticipantDtoCopyWithImpl(
      _ParticipantDto _value, $Res Function(_ParticipantDto) _then)
      : super(_value, (v) => _then(v as _ParticipantDto));

  @override
  _ParticipantDto get _value => super._value as _ParticipantDto;

  @override
  $Res call({
    Object? name = freezed,
    Object? vote = freezed,
  }) {
    return _then(_ParticipantDto(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      vote: vote == freezed
          ? _value.vote
          : vote // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ParticipantDto implements _ParticipantDto {
  const _$_ParticipantDto({required this.name, required this.vote});

  factory _$_ParticipantDto.fromJson(Map<String, dynamic> json) =>
      _$$_ParticipantDtoFromJson(json);

  @override
  final String name;
  @override
  final int? vote;

  @override
  String toString() {
    return 'ParticipantDto(name: $name, vote: $vote)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ParticipantDto &&
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
  _$ParticipantDtoCopyWith<_ParticipantDto> get copyWith =>
      __$ParticipantDtoCopyWithImpl<_ParticipantDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParticipantDtoToJson(this);
  }
}

abstract class _ParticipantDto implements ParticipantDto {
  const factory _ParticipantDto({required String name, required int? vote}) =
      _$_ParticipantDto;

  factory _ParticipantDto.fromJson(Map<String, dynamic> json) =
      _$_ParticipantDto.fromJson;

  @override
  String get name;
  @override
  int? get vote;
  @override
  @JsonKey(ignore: true)
  _$ParticipantDtoCopyWith<_ParticipantDto> get copyWith =>
      throw _privateConstructorUsedError;
}
