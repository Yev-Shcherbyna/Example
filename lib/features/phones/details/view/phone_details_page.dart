import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tutorial/gen/resources.dart';

class PhoneDetailsPage extends StatelessWidget {
  final String phoneId;

  const PhoneDetailsPage({required this.phoneId, Key? key}) : super(key: key);

  static RouteBase route() {
    return GoRoute(
      path: '/phones/:phoneId',
      builder: (context, state) => PhoneDetailsPage(phoneId: state.params["phoneId"]!),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PhoneDetailsView(
      phoneId: phoneId,
    );
  }
}

class PhoneDetailsView extends StatelessWidget {
  final String phoneId;

  const PhoneDetailsView({super.key, required this.phoneId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(children: [
            AppAssets.images.phone.image(),
            InkWell(
              child: Text('Phone $phoneId'),
              onTap: () => context.go("/phones/2"),
            )
          ]),
        ),
      ),
    );
  }
}
