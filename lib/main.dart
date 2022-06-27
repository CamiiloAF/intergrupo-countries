import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'core/environments/config_environment.dart';
import 'shared/routes/app_routes.dart';
import 'shared/routes/route_generator.dart';

Future<void> mainCommon({
  required final String env,
  required final bool debug,
  required final Function injectionDependencies,
}) async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await ConfigEnvironments.initialize(env: env);

  await injectionDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    Future.delayed(const Duration(seconds: 1), FlutterNativeSplash.remove);

    return const MaterialApp(
      title: 'Intergrupo',
      initialRoute: AppRoutes.homeScreen,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
