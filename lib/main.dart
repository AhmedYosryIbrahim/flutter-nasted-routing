import 'package:flutter/material.dart';
import 'package:nasted_routing_auto_route/routes/router.gr.dart';

void main() => runApp(const AppWidget());

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Nav Bar with Nested Routing',
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
