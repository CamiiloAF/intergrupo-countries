import 'package:flutter/material.dart';

import 'core/environments/config_environment.dart';
import 'shared/routes/app_routes.dart';
import 'shared/routes/route_generator.dart';

Future<void> mainCommon({
  required final String env,
  required final bool debug,
  required final Function injectionDependencies,
}) async {
  WidgetsFlutterBinding.ensureInitialized();

  await ConfigEnvironments.initialize(env: env);

  await injectionDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({final Key? key}) : super(key: key);

  @override
  Widget build(final BuildContext context) {
    return const MaterialApp(
      title: 'Intergrupo',
      initialRoute: AppRoutes.homeScreen,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
