import 'package:countries_and_flags/api/country_api.dart';
import 'package:countries_and_flags/api/models/country_api_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final countryProvider =
    StateNotifierProvider<CountryNotifier, AsyncValue<List<CountryApiModel>>>(
        (ref) {
  final api = ref.watch(countryApiProvider);
  return CountryNotifier(api);
});

class CountryNotifier extends StateNotifier<AsyncValue<List<CountryApiModel>>> {
  final CountryApi _api;

  CountryNotifier(this._api) : super(const AsyncValue.loading()) {
    fetchAllCountries();
  }

  Future<void> fetchAllCountries() async {
    try {
      final countries = await _api.fetchAll();
      state = AsyncValue.data(countries);
    } catch (e, stackTrace) {
      state = AsyncValue.error(e, stackTrace);
    }
  }

  Future<void> searchBy(String query) async {
    if (query.isEmpty) {
      fetchAllCountries();
    } else {
      try {
        final countries = await _api.searchBy(query);
        state = AsyncValue.data(countries);
      } catch (e) {
        if (e is DioException && e.response?.statusCode == 404) {
          state = const AsyncValue.data([]);
        } else {
          state = AsyncValue.error(e, StackTrace.current);
        }
      }
    }
  }
}
