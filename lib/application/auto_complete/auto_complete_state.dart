import 'package:freezed_annotation/freezed_annotation.dart';

part 'auto_complete_state.freezed.dart';

@freezed
class AutoCompleteState with _$AutoCompleteState {
  const factory AutoCompleteState({
    required String query,
  }) = _AutoCompleteState;
}
