import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_failure.freezed.dart';

@freezed
class FireStoreFailure with _$FireStoreFailure {
  const factory FireStoreFailure.serverError() = ServerError;
}
