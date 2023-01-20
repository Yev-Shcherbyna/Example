import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:tutorial/app/app.dart';
import 'package:tutorial/app/app_bloc_observer.dart';
import 'package:tutorial/data/phones_repository.dart';

void bootstrap() {
  Bloc.observer = AppBlocObserver();
  FlutterError.onError = (details) {
    if (kDebugMode) {
      print(details.exceptionAsString());
      print(details.stack.toString());
    }
  };

  final phonesRepository = PhonesRepository();

  runZonedGuarded(
    () => runApp(App(
      phonesRepository: phonesRepository,
    )),
    (error, stackTrace) {
      if (kDebugMode) {
        print(error.toString());
        print(stackTrace.toString());
      }
    },
  );
}
