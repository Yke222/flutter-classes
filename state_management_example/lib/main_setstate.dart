import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:bloc/bloc.dart';
import 'package:state_management_example/app/app_bloc_observer.dart';
import 'package:state_management_example/app/app_setstate.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  runZonedGuarded(
    () => runApp(const AppSetState()),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
