import 'package:get_it/get_it.dart';

import '../../feature/home/di/home_di.dart';
import '../http/di/http_dependencies.dart';

GetIt sl = GetIt.instance;

Future<void> injectionDependencies() async {
  await setUpHttpDependencies();
  await setUpHomeDependencies();
}
