import 'package:flutter_bloc/flutter_bloc.dart';

import 'phones_event.dart';
import 'phones_state.dart';

class PhonesBloc extends Bloc<PhonesEvent, PhonesState> {

  PhonesBloc() : super(const PhonesState()) {
    on<Fetch>(_onFetch);
  }

  void _onFetch(event, emit) {
    emit(state.copyWith(name: "Test"));
  }

}