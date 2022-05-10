import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'blocs/blocs.dart';
import 'generated/l10n.dart';
import 'routes/route_generator.dart';
import 'screens/main/main_view.dart';
import 'services/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.configurePrefs();

  runApp(MultiBlocProvider(
    providers: [
      BlocProvider(
          create: (_) =>
              ThemeBloc(LocalStorage.prefs.getString('themeName') ?? 'light')),
      BlocProvider(create: (_) => NavigationBarBloc()),
      BlocProvider(
          create: (_) => LanguageBloc(
              LocalStorage.prefs.getString('languageCode') ?? 'es')),
    ],
    child: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  static const routeName = '/main';
  final RouteGenerator _routeGenerator = RouteGenerator();
  static const String title = 'Hydra 2';
  MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: S.delegate.supportedLocales,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        S.delegate,
      ],
      debugShowCheckedModeBanner: false,
      locale: context.watch<LanguageBloc>().state.locale,
      title: title,
      initialRoute: '/',
      onGenerateRoute: _routeGenerator.onGenerateRoute,
      theme: context.watch<ThemeBloc>().state.theme,
      home: const MainView(),
    );
  }
}
