// Helper file to make coverage work for all dart files

// ignore_for_file: unused_import
import 'package:intergrupo/core/di/injection_container.dart';
import 'package:intergrupo/core/environments/config_environment.dart';
import 'package:intergrupo/core/environments/environment.dev.dart';
import 'package:intergrupo/core/environments/environment_interface.dart';
import 'package:intergrupo/core/error/exceptions.dart';
import 'package:intergrupo/core/http/data/config/remote_api_constants.dart';
import 'package:intergrupo/core/http/data/data_source/authentication_remote_data_source.dart';
import 'package:intergrupo/core/http/data/http_proxy_impl.dart';
import 'package:intergrupo/core/http/data/interceptors/custom_on_error.dart';
import 'package:intergrupo/core/http/data/interceptors/custom_on_request.dart';
import 'package:intergrupo/core/http/data/interceptors/http_interceptor.dart';
import 'package:intergrupo/core/http/data/models/auth_token_response_model.dart';
import 'package:intergrupo/core/http/data/models/generic_http_error.dart';
import 'package:intergrupo/core/http/data/repositories/authentication_repository.dart';
import 'package:intergrupo/core/http/di/http_dependencies.dart';
import 'package:intergrupo/core/http/domain/models/auth_token_response.dart';
import 'package:intergrupo/core/http/domain/models/path_uri.dart';
import 'package:intergrupo/core/http/domain/repositories/authentication_repository_contract.dart';
import 'package:intergrupo/core/http/domain/repositories/http_proxy_repository.dart';
import 'package:intergrupo/core/use_case/use_case.dart';
import 'package:intergrupo/feature/home/data/data_sources/home_remote_data_source.dart';
import 'package:intergrupo/feature/home/data/models/country_response_model.dart';
import 'package:intergrupo/feature/home/data/repositories/home_repository.dart';
import 'package:intergrupo/feature/home/di/home_di.dart';
import 'package:intergrupo/feature/home/domain/entities/country.dart';
import 'package:intergrupo/feature/home/domain/repositories/home_repository_contract.dart';
import 'package:intergrupo/feature/home/domain/use_cases/get_countries_use_case.dart';
import 'package:intergrupo/feature/home/domain/use_cases/open_map_use_case.dart';
import 'package:intergrupo/feature/home/presentation/manager/home_bloc.dart';
import 'package:intergrupo/feature/home/presentation/pages/home_screen.dart';
import 'package:intergrupo/feature/home/presentation/widgets/countries_empty.dart';
import 'package:intergrupo/feature/home/presentation/widgets/countries_error.dart';
import 'package:intergrupo/feature/home/presentation/widgets/countries_loading.dart';
import 'package:intergrupo/feature/home/presentation/widgets/countries_populated.dart';
import 'package:intergrupo/feature/home/presentation/widgets/countries_search_input.dart';
import 'package:intergrupo/feature/home/presentation/widgets/country_item.dart';
import 'package:intergrupo/feature/home/presentation/widgets/delegates/countries_search_delegate.dart';
import 'package:intergrupo/feature/home/presentation/widgets/refresh_countries_icon_button.dart';
import 'package:intergrupo/feature/home/presentation/widgets/widgets.dart';
import 'package:intergrupo/main.dart';
import 'package:intergrupo/shared/routes/app_routes.dart';
import 'package:intergrupo/shared/routes/route_generator.dart';

void main() {}
