import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:state_management_example/counter/view/counter_page_setstate.dart';
import 'package:state_management_example/l10n/l10n.dart';

class AppSetState extends StatelessWidget {
  const AppSetState({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        accentColor: const Color(0xFF13B9FF),
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
      ),
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: const SetStateExample(),
    );
  }
}
