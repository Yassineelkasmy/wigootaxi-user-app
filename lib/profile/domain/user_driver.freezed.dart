// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_driver.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDriver _$UserDriverFromJson(Map<String, dynamic> json) {
  return _UserDriver.fromJson(json);
}

/// @nodoc
class _$UserDriverTearOff {
  const _$UserDriverTearOff();

  _UserDriver call(
      {required String username,
      required String phone,
      required String driverId,
      required int rides,
      required List<String> ridesIds,
      @TimestampConverter() required DateTime lastRideTs}) {
    return _UserDriver(
      username: username,
      phone: phone,
      driverId: driverId,
      rides: rides,
      ridesIds: ridesIds,
      lastRideTs: lastRideTs,
    );
  }

  UserDriver fromJson(Map<String, Object?> json) {
    return UserDriver.fromJson(json);
  }
}

/// @nodoc
const $UserDriver = _$UserDriverTearOff();

/// @nodoc
mixin _$UserDriver {
  String get username => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get driverId => throw _privateConstructorUsedError;
  int get rides => throw _privateConstructorUsedError;
  List<String> get ridesIds => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get lastRideTs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDriverCopyWith<UserDriver> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDriverCopyWith<$Res> {
  factory $UserDriverCopyWith(
          UserDriver value, $Res Function(UserDriver) then) =
      _$UserDriverCopyWithImpl<$Res>;
  $Res call(
      {String username,
      String phone,
      String driverId,
      int rides,
      List<String> ridesIds,
      @TimestampConverter() DateTime lastRideTs});
}

/// @nodoc
class _$UserDriverCopyWithImpl<$Res> implements $UserDriverCopyWith<$Res> {
  _$UserDriverCopyWithImpl(this._value, this._then);

  final UserDriver _value;
  // ignore: unused_field
  final $Res Function(UserDriver) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? phone = freezed,
    Object? driverId = freezed,
    Object? rides = freezed,
    Object? ridesIds = freezed,
    Object? lastRideTs = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      driverId: driverId == freezed
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String,
      rides: rides == freezed
          ? _value.rides
          : rides // ignore: cast_nullable_to_non_nullable
              as int,
      ridesIds: ridesIds == freezed
          ? _value.ridesIds
          : ridesIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastRideTs: lastRideTs == freezed
          ? _value.lastRideTs
          : lastRideTs // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$UserDriverCopyWith<$Res> implements $UserDriverCopyWith<$Res> {
  factory _$UserDriverCopyWith(
          _UserDriver value, $Res Function(_UserDriver) then) =
      __$UserDriverCopyWithImpl<$Res>;
  @override
  $Res call(
      {String username,
      String phone,
      String driverId,
      int rides,
      List<String> ridesIds,
      @TimestampConverter() DateTime lastRideTs});
}

/// @nodoc
class __$UserDriverCopyWithImpl<$Res> extends _$UserDriverCopyWithImpl<$Res>
    implements _$UserDriverCopyWith<$Res> {
  __$UserDriverCopyWithImpl(
      _UserDriver _value, $Res Function(_UserDriver) _then)
      : super(_value, (v) => _then(v as _UserDriver));

  @override
  _UserDriver get _value => super._value as _UserDriver;

  @override
  $Res call({
    Object? username = freezed,
    Object? phone = freezed,
    Object? driverId = freezed,
    Object? rides = freezed,
    Object? ridesIds = freezed,
    Object? lastRideTs = freezed,
  }) {
    return _then(_UserDriver(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      driverId: driverId == freezed
          ? _value.driverId
          : driverId // ignore: cast_nullable_to_non_nullable
              as String,
      rides: rides == freezed
          ? _value.rides
          : rides // ignore: cast_nullable_to_non_nullable
              as int,
      ridesIds: ridesIds == freezed
          ? _value.ridesIds
          : ridesIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lastRideTs: lastRideTs == freezed
          ? _value.lastRideTs
          : lastRideTs // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDriver implements _UserDriver {
  const _$_UserDriver(
      {required this.username,
      required this.phone,
      required this.driverId,
      required this.rides,
      required this.ridesIds,
      @TimestampConverter() required this.lastRideTs});

  factory _$_UserDriver.fromJson(Map<String, dynamic> json) =>
      _$$_UserDriverFromJson(json);

  @override
  final String username;
  @override
  final String phone;
  @override
  final String driverId;
  @override
  final int rides;
  @override
  final List<String> ridesIds;
  @override
  @TimestampConverter()
  final DateTime lastRideTs;

  @override
  String toString() {
    return 'UserDriver(username: $username, phone: $phone, driverId: $driverId, rides: $rides, ridesIds: $ridesIds, lastRideTs: $lastRideTs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDriver &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.driverId, driverId) &&
            const DeepCollectionEquality().equals(other.rides, rides) &&
            const DeepCollectionEquality().equals(other.ridesIds, ridesIds) &&
            const DeepCollectionEquality()
                .equals(other.lastRideTs, lastRideTs));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(driverId),
      const DeepCollectionEquality().hash(rides),
      const DeepCollectionEquality().hash(ridesIds),
      const DeepCollectionEquality().hash(lastRideTs));

  @JsonKey(ignore: true)
  @override
  _$UserDriverCopyWith<_UserDriver> get copyWith =>
      __$UserDriverCopyWithImpl<_UserDriver>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDriverToJson(this);
  }
}

abstract class _UserDriver implements UserDriver {
  const factory _UserDriver(
      {required String username,
      required String phone,
      required String driverId,
      required int rides,
      required List<String> ridesIds,
      @TimestampConverter() required DateTime lastRideTs}) = _$_UserDriver;

  factory _UserDriver.fromJson(Map<String, dynamic> json) =
      _$_UserDriver.fromJson;

  @override
  String get username;
  @override
  String get phone;
  @override
  String get driverId;
  @override
  int get rides;
  @override
  List<String> get ridesIds;
  @override
  @TimestampConverter()
  DateTime get lastRideTs;
  @override
  @JsonKey(ignore: true)
  _$UserDriverCopyWith<_UserDriver> get copyWith =>
      throw _privateConstructorUsedError;
}
