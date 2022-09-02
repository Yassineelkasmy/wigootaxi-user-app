// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProfileStateTearOff {
  const _$ProfileStateTearOff();

  _ProfileState call(
      {Metrics? metrics,
      required List<Ride> finishedRides,
      required List<Ride> userCancelledRides,
      required List<Ride> driverCancelledRides,
      required List<UserDriver> userDrivers,
      required UserProfile userProfile,
      DriverRecord? driverRecord,
      required bool isLoading}) {
    return _ProfileState(
      metrics: metrics,
      finishedRides: finishedRides,
      userCancelledRides: userCancelledRides,
      driverCancelledRides: driverCancelledRides,
      userDrivers: userDrivers,
      userProfile: userProfile,
      driverRecord: driverRecord,
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $ProfileState = _$ProfileStateTearOff();

/// @nodoc
mixin _$ProfileState {
  Metrics? get metrics => throw _privateConstructorUsedError;
  List<Ride> get finishedRides => throw _privateConstructorUsedError;
  List<Ride> get userCancelledRides => throw _privateConstructorUsedError;
  List<Ride> get driverCancelledRides => throw _privateConstructorUsedError;
  List<UserDriver> get userDrivers => throw _privateConstructorUsedError;
  UserProfile get userProfile => throw _privateConstructorUsedError;
  DriverRecord? get driverRecord => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
  $Res call(
      {Metrics? metrics,
      List<Ride> finishedRides,
      List<Ride> userCancelledRides,
      List<Ride> driverCancelledRides,
      List<UserDriver> userDrivers,
      UserProfile userProfile,
      DriverRecord? driverRecord,
      bool isLoading});

  $MetricsCopyWith<$Res>? get metrics;
  $UserProfileCopyWith<$Res> get userProfile;
  $DriverRecordCopyWith<$Res>? get driverRecord;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;

  @override
  $Res call({
    Object? metrics = freezed,
    Object? finishedRides = freezed,
    Object? userCancelledRides = freezed,
    Object? driverCancelledRides = freezed,
    Object? userDrivers = freezed,
    Object? userProfile = freezed,
    Object? driverRecord = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      metrics: metrics == freezed
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Metrics?,
      finishedRides: finishedRides == freezed
          ? _value.finishedRides
          : finishedRides // ignore: cast_nullable_to_non_nullable
              as List<Ride>,
      userCancelledRides: userCancelledRides == freezed
          ? _value.userCancelledRides
          : userCancelledRides // ignore: cast_nullable_to_non_nullable
              as List<Ride>,
      driverCancelledRides: driverCancelledRides == freezed
          ? _value.driverCancelledRides
          : driverCancelledRides // ignore: cast_nullable_to_non_nullable
              as List<Ride>,
      userDrivers: userDrivers == freezed
          ? _value.userDrivers
          : userDrivers // ignore: cast_nullable_to_non_nullable
              as List<UserDriver>,
      userProfile: userProfile == freezed
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfile,
      driverRecord: driverRecord == freezed
          ? _value.driverRecord
          : driverRecord // ignore: cast_nullable_to_non_nullable
              as DriverRecord?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $MetricsCopyWith<$Res>? get metrics {
    if (_value.metrics == null) {
      return null;
    }

    return $MetricsCopyWith<$Res>(_value.metrics!, (value) {
      return _then(_value.copyWith(metrics: value));
    });
  }

  @override
  $UserProfileCopyWith<$Res> get userProfile {
    return $UserProfileCopyWith<$Res>(_value.userProfile, (value) {
      return _then(_value.copyWith(userProfile: value));
    });
  }

  @override
  $DriverRecordCopyWith<$Res>? get driverRecord {
    if (_value.driverRecord == null) {
      return null;
    }

    return $DriverRecordCopyWith<$Res>(_value.driverRecord!, (value) {
      return _then(_value.copyWith(driverRecord: value));
    });
  }
}

/// @nodoc
abstract class _$ProfileStateCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$ProfileStateCopyWith(
          _ProfileState value, $Res Function(_ProfileState) then) =
      __$ProfileStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Metrics? metrics,
      List<Ride> finishedRides,
      List<Ride> userCancelledRides,
      List<Ride> driverCancelledRides,
      List<UserDriver> userDrivers,
      UserProfile userProfile,
      DriverRecord? driverRecord,
      bool isLoading});

  @override
  $MetricsCopyWith<$Res>? get metrics;
  @override
  $UserProfileCopyWith<$Res> get userProfile;
  @override
  $DriverRecordCopyWith<$Res>? get driverRecord;
}

/// @nodoc
class __$ProfileStateCopyWithImpl<$Res> extends _$ProfileStateCopyWithImpl<$Res>
    implements _$ProfileStateCopyWith<$Res> {
  __$ProfileStateCopyWithImpl(
      _ProfileState _value, $Res Function(_ProfileState) _then)
      : super(_value, (v) => _then(v as _ProfileState));

  @override
  _ProfileState get _value => super._value as _ProfileState;

  @override
  $Res call({
    Object? metrics = freezed,
    Object? finishedRides = freezed,
    Object? userCancelledRides = freezed,
    Object? driverCancelledRides = freezed,
    Object? userDrivers = freezed,
    Object? userProfile = freezed,
    Object? driverRecord = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_ProfileState(
      metrics: metrics == freezed
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Metrics?,
      finishedRides: finishedRides == freezed
          ? _value.finishedRides
          : finishedRides // ignore: cast_nullable_to_non_nullable
              as List<Ride>,
      userCancelledRides: userCancelledRides == freezed
          ? _value.userCancelledRides
          : userCancelledRides // ignore: cast_nullable_to_non_nullable
              as List<Ride>,
      driverCancelledRides: driverCancelledRides == freezed
          ? _value.driverCancelledRides
          : driverCancelledRides // ignore: cast_nullable_to_non_nullable
              as List<Ride>,
      userDrivers: userDrivers == freezed
          ? _value.userDrivers
          : userDrivers // ignore: cast_nullable_to_non_nullable
              as List<UserDriver>,
      userProfile: userProfile == freezed
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as UserProfile,
      driverRecord: driverRecord == freezed
          ? _value.driverRecord
          : driverRecord // ignore: cast_nullable_to_non_nullable
              as DriverRecord?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ProfileState implements _ProfileState {
  const _$_ProfileState(
      {this.metrics,
      required this.finishedRides,
      required this.userCancelledRides,
      required this.driverCancelledRides,
      required this.userDrivers,
      required this.userProfile,
      this.driverRecord,
      required this.isLoading});

  @override
  final Metrics? metrics;
  @override
  final List<Ride> finishedRides;
  @override
  final List<Ride> userCancelledRides;
  @override
  final List<Ride> driverCancelledRides;
  @override
  final List<UserDriver> userDrivers;
  @override
  final UserProfile userProfile;
  @override
  final DriverRecord? driverRecord;
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ProfileState(metrics: $metrics, finishedRides: $finishedRides, userCancelledRides: $userCancelledRides, driverCancelledRides: $driverCancelledRides, userDrivers: $userDrivers, userProfile: $userProfile, driverRecord: $driverRecord, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileState &&
            const DeepCollectionEquality().equals(other.metrics, metrics) &&
            const DeepCollectionEquality()
                .equals(other.finishedRides, finishedRides) &&
            const DeepCollectionEquality()
                .equals(other.userCancelledRides, userCancelledRides) &&
            const DeepCollectionEquality()
                .equals(other.driverCancelledRides, driverCancelledRides) &&
            const DeepCollectionEquality()
                .equals(other.userDrivers, userDrivers) &&
            const DeepCollectionEquality()
                .equals(other.userProfile, userProfile) &&
            const DeepCollectionEquality()
                .equals(other.driverRecord, driverRecord) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(metrics),
      const DeepCollectionEquality().hash(finishedRides),
      const DeepCollectionEquality().hash(userCancelledRides),
      const DeepCollectionEquality().hash(driverCancelledRides),
      const DeepCollectionEquality().hash(userDrivers),
      const DeepCollectionEquality().hash(userProfile),
      const DeepCollectionEquality().hash(driverRecord),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      __$ProfileStateCopyWithImpl<_ProfileState>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {Metrics? metrics,
      required List<Ride> finishedRides,
      required List<Ride> userCancelledRides,
      required List<Ride> driverCancelledRides,
      required List<UserDriver> userDrivers,
      required UserProfile userProfile,
      DriverRecord? driverRecord,
      required bool isLoading}) = _$_ProfileState;

  @override
  Metrics? get metrics;
  @override
  List<Ride> get finishedRides;
  @override
  List<Ride> get userCancelledRides;
  @override
  List<Ride> get driverCancelledRides;
  @override
  List<UserDriver> get userDrivers;
  @override
  UserProfile get userProfile;
  @override
  DriverRecord? get driverRecord;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$ProfileStateCopyWith<_ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
