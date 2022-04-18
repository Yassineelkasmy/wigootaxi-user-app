import 'package:freezed_annotation/freezed_annotation.dart';

part 'directions_failure.freezed.dart';

@freezed
class DirectionFailure with _$DirectionFailure {
  const factory DirectionFailure.serverError() = ServerError;
}
