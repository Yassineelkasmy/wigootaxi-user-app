// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MessageEventTearOff {
  const _$MessageEventTearOff();

  MessageSent messageSent(
      String text, String subject, String attachment, User user) {
    return MessageSent(
      text,
      subject,
      attachment,
      user,
    );
  }
}

/// @nodoc
const $MessageEvent = _$MessageEventTearOff();

/// @nodoc
mixin _$MessageEvent {
  String get text => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  String get attachment => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String text, String subject, String attachment, User user)
        messageSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, String subject, String attachment, User user)?
        messageSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, String subject, String attachment, User user)?
        messageSent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageSent value) messageSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessageSent value)? messageSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageSent value)? messageSent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageEventCopyWith<MessageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageEventCopyWith<$Res> {
  factory $MessageEventCopyWith(
          MessageEvent value, $Res Function(MessageEvent) then) =
      _$MessageEventCopyWithImpl<$Res>;
  $Res call({String text, String subject, String attachment, User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$MessageEventCopyWithImpl<$Res> implements $MessageEventCopyWith<$Res> {
  _$MessageEventCopyWithImpl(this._value, this._then);

  final MessageEvent _value;
  // ignore: unused_field
  final $Res Function(MessageEvent) _then;

  @override
  $Res call({
    Object? text = freezed,
    Object? subject = freezed,
    Object? attachment = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      attachment: attachment == freezed
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class $MessageSentCopyWith<$Res>
    implements $MessageEventCopyWith<$Res> {
  factory $MessageSentCopyWith(
          MessageSent value, $Res Function(MessageSent) then) =
      _$MessageSentCopyWithImpl<$Res>;
  @override
  $Res call({String text, String subject, String attachment, User user});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$MessageSentCopyWithImpl<$Res> extends _$MessageEventCopyWithImpl<$Res>
    implements $MessageSentCopyWith<$Res> {
  _$MessageSentCopyWithImpl(
      MessageSent _value, $Res Function(MessageSent) _then)
      : super(_value, (v) => _then(v as MessageSent));

  @override
  MessageSent get _value => super._value as MessageSent;

  @override
  $Res call({
    Object? text = freezed,
    Object? subject = freezed,
    Object? attachment = freezed,
    Object? user = freezed,
  }) {
    return _then(MessageSent(
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      attachment == freezed
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String,
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$MessageSent implements MessageSent {
  const _$MessageSent(this.text, this.subject, this.attachment, this.user);

  @override
  final String text;
  @override
  final String subject;
  @override
  final String attachment;
  @override
  final User user;

  @override
  String toString() {
    return 'MessageEvent.messageSent(text: $text, subject: $subject, attachment: $attachment, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MessageSent &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.subject, subject) &&
            const DeepCollectionEquality()
                .equals(other.attachment, attachment) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(subject),
      const DeepCollectionEquality().hash(attachment),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  $MessageSentCopyWith<MessageSent> get copyWith =>
      _$MessageSentCopyWithImpl<MessageSent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String text, String subject, String attachment, User user)
        messageSent,
  }) {
    return messageSent(text, subject, attachment, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, String subject, String attachment, User user)?
        messageSent,
  }) {
    return messageSent?.call(text, subject, attachment, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, String subject, String attachment, User user)?
        messageSent,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(text, subject, attachment, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessageSent value) messageSent,
  }) {
    return messageSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MessageSent value)? messageSent,
  }) {
    return messageSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessageSent value)? messageSent,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(this);
    }
    return orElse();
  }
}

abstract class MessageSent implements MessageEvent {
  const factory MessageSent(
          String text, String subject, String attachment, User user) =
      _$MessageSent;

  @override
  String get text;
  @override
  String get subject;
  @override
  String get attachment;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  $MessageSentCopyWith<MessageSent> get copyWith =>
      throw _privateConstructorUsedError;
}
