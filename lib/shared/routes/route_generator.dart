import 'package:flutter/material.dart';

import '../../feature/home/presentation/pages/home_screen.dart';
import 'app_routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(final RouteSettings settings) {
    final args = settings.arguments as Map?;
    final availableRoutes = _getAvailableRoutes(args);

    var page = availableRoutes[settings.name];

    page ??= (final _) => const HomeScreen();

    return MaterialPageRoute(settings: settings, builder: page);
  }

  static Map<String, WidgetBuilder> _getAvailableRoutes(final Map? args) {
    return {
      AppRoutes.homeScreen: (final _) => const HomeScreen(),
    };
  }
}
