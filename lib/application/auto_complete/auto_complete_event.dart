import 'package:freezed_annotation/freezed_annotation.dart';

part 'auto_complete_event.freezed.dart';

@freezed
class AutoCompleteEvent with _$AutoCompleteEvent {
  const factory AutoCompleteEvent.startedTyping() = StartedTyping;
}
