import 'package:flutter/material.dart';
import 'package:windows_desktop_app/core/routing/routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    // switch (settings.name) {
    //   case Routes.splashScreen:
    //     return MaterialPageRoute(
    //       builder: (_) => const SplashScreen(),
    //     );
    //   default:
    //     return null;
    // }
  }
}