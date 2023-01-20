import 'package:freezed_annotation/freezed_annotation.dart';

part 'phones_event.freezed.dart';

@freezed
class PhonesEvent with _$PhonesEvent {
  const factory PhonesEvent.fetch() = Fetch;
}