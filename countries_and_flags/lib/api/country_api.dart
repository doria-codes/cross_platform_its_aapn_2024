import 'package:countries_and_flags/api/http_client_provider.dart';
import 'package:countries_and_flags/api/models/country_api_model.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'country_api.g.dart';

@riverpod
CountryApi countryApi(CountryApiRef ref) {
  final client = ref.watch(httpClientProvider);
  final api = CountryApi(client);
  return api;
}

class CountryApi {
  const CountryApi(this.client);
  final Dio client;

  Future<List<CountryApiModel>> fetchAll() async {
    final response = await client.get<List>('/all?fields=name,flags,cca2');
    return response.data!
        .map((json) => CountryApiModel.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  Future<List<CountryApiModel>> searchBy(String query) async {
    if (query.isEmpty) {
      return fetchAll();
    } else {
      final response =
          await client.get<List>('/name/$query?fields=name,flags,cca2');
      return response.data!
          .map((json) => CountryApiModel.fromJson(json as Map<String, dynamic>))
          .toList();
    }
  }
}
