import 'package:countries_and_flags/src/models/favourite_country.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final favouriteCountryProvider =
    StateNotifierProvider<FavouriteCountryNotifier, List<FavouriteCountry>>(
        (ref) {
  return FavouriteCountryNotifier();
});
