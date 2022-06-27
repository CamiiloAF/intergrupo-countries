import 'package:dio/dio.dart';
import 'package:intergrupo/core/http/data/data_source/authentication_remote_data_source.dart';
import 'package:intergrupo/core/http/data/http_proxy_impl.dart';
import 'package:intergrupo/core/http/domain/repositories/authentication_repository_contract.dart';
import 'package:mocktail/mocktail.dart';

class MockHttpProxyImpl extends Mock implements HttpProxyImpl {}

class MockDio extends Mock implements Dio {}

class MockDioResponse extends Mock implements Response {}

class AuthenticationRemoteDataSourceMock extends Mock
    implements AuthenticationRemoteDataSource {}

class AuthenticationRepositoryMock extends Mock
    implements AuthenticationRepositoryContract {}
