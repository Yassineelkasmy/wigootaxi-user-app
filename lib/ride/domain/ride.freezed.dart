// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ride.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RideTearOff {
  const _$RideTearOff();

  _Ride call(
      {required NearbySearch droppOff,
      required NearbySearch pickUp,
      required RideType type}) {
    return _Ride(
      droppOff: droppOff,
      pickUp: pickUp,
      type: type,
    );
  }
}

/// @nodoc
const $Ride = _$RideTearOff();

/// @nodoc
mixin _$Ride {
  NearbySearch get droppOff => throw _privateConstructorUsedError;
  NearbySearch get pickUp => throw _privateConstructorUsedError;
  RideType get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RideCopyWith<Ride> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RideCopyWith<$Res> {
  factory $RideCopyWith(Ride value, $Res Function(Ride) then) =
      _$RideCopyWithImpl<$Res>;
  $Res call({NearbySearch droppOff, NearbySearch pickUp, RideType type});

  $NearbySearchCopyWith<$Res> get droppOff;
  $NearbySearchCopyWith<$Res> get pickUp;
}

/// @nodoc
class _$RideCopyWithImpl<$Res> implements $RideCopyWith<$Res> {
  _$RideCopyWithImpl(this._value, this._then);

  final Ride _value;
  // ignore: unused_field
  final $Res Function(Ride) _then;

  @override
  $Res call({
    Object? droppOff = freezed,
    Object? pickUp = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      droppOff: droppOff == freezed
          ? _value.droppOff
          : droppOff // ignore: cast_nullable_to_non_nullable
              as NearbySearch,
      pickUp: pickUp == freezed
          ? _value.pickUp
          : pickUp // ignore: cast_nullable_to_non_nullable
              as NearbySearch,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RideType,
    ));
  }

  @override
  $NearbySearchCopyWith<$Res> get droppOff {
    return $NearbySearchCopyWith<$Res>(_value.droppOff, (value) {
      return _then(_value.copyWith(droppOff: value));
    });
  }

  @override
  $NearbySearchCopyWith<$Res> get pickUp {
    return $NearbySearchCopyWith<$Res>(_value.pickUp, (value) {
      return _then(_value.copyWith(pickUp: value));
    });
  }
}

/// @nodoc
abstract class _$RideCopyWith<$Res> implements $RideCopyWith<$Res> {
  factory _$RideCopyWith(_Ride value, $Res Function(_Ride) then) =
      __$RideCopyWithImpl<$Res>;
  @override
  $Res call({NearbySearch droppOff, NearbySearch pickUp, RideType type});

  @override
  $NearbySearchCopyWith<$Res> get droppOff;
  @override
  $NearbySearchCopyWith<$Res> get pickUp;
}

/// @nodoc
class __$RideCopyWithImpl<$Res> extends _$RideCopyWithImpl<$Res>
    implements _$RideCopyWith<$Res> {
  __$RideCopyWithImpl(_Ride _value, $Res Function(_Ride) _then)
      : super(_value, (v) => _then(v as _Ride));

  @override
  _Ride get _value => super._value as _Ride;

  @override
  $Res call({
    Object? droppOff = freezed,
    Object? pickUp = freezed,
    Object? type = freezed,
  }) {
    return _then(_Ride(
      droppOff: droppOff == freezed
          ? _value.droppOff
          : droppOff // ignore: cast_nullable_to_non_nullable
              as NearbySearch,
      pickUp: pickUp == freezed
          ? _value.pickUp
          : pickUp // ignore: cast_nullable_to_non_nullable
              as NearbySearch,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RideType,
    ));
  }
}

/// @nodoc

class _$_Ride implements _Ride {
  const _$_Ride(
      {required this.droppOff, required this.pickUp, required this.type});

  @override
  final NearbySearch droppOff;
  @override
  final NearbySearch pickUp;
  @override
  final RideType type;

  @override
  String toString() {
    return 'Ride(droppOff: $droppOff, pickUp: $pickUp, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Ride &&
            const DeepCollectionEquality().equals(other.droppOff, droppOff) &&
            const DeepCollectionEquality().equals(other.pickUp, pickUp) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(droppOff),
      const DeepCollectionEquality().hash(pickUp),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$RideCopyWith<_Ride> get copyWith =>
      __$RideCopyWithImpl<_Ride>(this, _$identity);
}

abstract class _Ride implements Ride {
  const factory _Ride(
      {required NearbySearch droppOff,
      required NearbySearch pickUp,
      required RideType type}) = _$_Ride;

  @override
  NearbySearch get droppOff;
  @override
  NearbySearch get pickUp;
  @override
  RideType get type;
  @override
  @JsonKey(ignore: true)
  _$RideCopyWith<_Ride> get copyWith => throw _privateConstructorUsedError;
}
