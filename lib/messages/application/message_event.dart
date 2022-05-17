import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:taxidriver/domain/auth/user.dart';

part 'message_event.freezed.dart';

@freezed
class MessageEvent with _$MessageEvent {
  const factory MessageEvent.messageSent(
    String text,
    String subject,
    String attachment,
    User user,
  ) = MessageSent;
}
