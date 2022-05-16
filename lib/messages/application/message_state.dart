import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_state.freezed.dart';

@freezed
class MessageState with _$MessageState {
  const factory MessageState({
    required bool sent,
    required bool isLoading,
  }) = _MessageState;

  factory MessageState.initial() => MessageState(
        sent: false,
        isLoading: false,
      );
}
