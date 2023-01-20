import 'package:freezed_annotation/freezed_annotation.dart';

part 'phones_state.freezed.dart';

@freezed
class PhonesState with _$PhonesState {
  const factory PhonesState([
    @Default("") String name,
  ]) = _PhonesState;
}
