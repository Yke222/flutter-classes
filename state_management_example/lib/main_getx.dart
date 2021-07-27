import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:bloc/bloc.dart';
import 'package:state_management_example/app/app_bloc_observer.dart';

import 'app/app_getx.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  runZonedGuarded(
    () => runApp(const AppGetX()),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
