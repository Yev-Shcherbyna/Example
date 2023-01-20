import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tutorial/data/phones_repository.dart';
import 'package:tutorial/features/phones/details/view/phone_details_page.dart';
import 'package:tutorial/features/phones/list/view/phone_list_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tutorial/l10n/l10n.dart';


final GoRouter _router = GoRouter(
  initialLocation: '/phones/1',
  debugLogDiagnostics: true,
  routes: <RouteBase>[
    GoRoute(
        path: '/phones',
        builder: (BuildContext context, GoRouterState state) {
          return const PhoneListPage();
        },
        routes: [
          GoRoute(
            path: ':phoneId',
            builder: (context, state) => PhoneDetailsPage(phoneId: state.params["phoneId"]!),
          )
        ]),
  ],
);

class App extends StatelessWidget {
  final PhonesRepository phonesRepository;

  const App({super.key, required this.phonesRepository});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: phonesRepository),
      ],
      child: const AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: _router,
    );
  }
}
