import 'package:countries_and_flags/src/models/country_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:countries_and_flags/api/models/country_api_model.dart';

part 'favourite_country.freezed.dart';

@freezed
class FavouriteCountry with _$FavouriteCountry {
  const factory FavouriteCountry({
    required CountryModel country,
  }) = _FavouriteCountry;
}

class FavouriteCountryNotifier extends StateNotifier<List<FavouriteCountry>> {
  FavouriteCountryNotifier() : super([]);

  void toggleFavourite(CountryModel country) {
    final isFavourite = state.any((fav) => fav.country.id == country.id);

    if (isFavourite) {
      state = state.where((fav) => fav.country.id != country.id).toList();
    } else {
      state = [...state, FavouriteCountry(country: country)];
    }
  }
}

final favouriteCountryProvider =
    StateNotifierProvider<FavouriteCountryNotifier, List<FavouriteCountry>>(
        (ref) {
  return FavouriteCountryNotifier();
});
