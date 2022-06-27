import '../../../../core/http/data/http_proxy_impl.dart';
import '../../../../core/http/domain/models/path_uri.dart';
import '../models/country_response_model.dart';

class HomeRemoteDataSource {
  HomeRemoteDataSource(this._httpProxyImpl, this._getCountryService);

  final HttpProxyImpl _httpProxyImpl;
  final String _getCountryService;

  Future<List<CountryResponseModel>> getCountries() async {
    final http = _httpProxyImpl.instance();

    final _uri = PathUri(service: _getCountryService).toString();

    final resp = await http.get(_uri);

    return countryResponseModelFromJson(resp.data);
  }
}
