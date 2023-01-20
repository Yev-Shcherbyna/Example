import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tutorial/gen/resources.dart';
import 'package:tutorial/l10n/l10n.dart';

class PhoneListPage extends StatelessWidget {
  const PhoneListPage({Key? key}) : super(key: key);

  static GoRoute route() {
    return GoRoute(
        path: '/phones',
        builder: (BuildContext context, GoRouterState state) {
          return const PhoneListPage();
        });
  }

  @override
  Widget build(BuildContext context) {
    return const PhoneListView();
  }
}

class PhoneListView extends StatelessWidget {
  const PhoneListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: InkWell(
          child: Text('${context.l10n.phoneName} Test'),
          onTap: () => context.push("/phones/1"),
        ),
      ),
    );
  }
}
