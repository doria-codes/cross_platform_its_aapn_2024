import 'package:countries_and_flags/logger.dart';
import 'package:countries_and_flags/src/models/country_model.dart';
import 'package:countries_and_flags/src/pages/details_page.dart';
import 'package:countries_and_flags/src/pages/favourites_page.dart';
import 'package:countries_and_flags/src/pages/home_page.dart';
import 'package:go_router/go_router.dart';
import 'package:talker_flutter/talker_flutter.dart';

final router = GoRouter(
  observers: [
    TalkerRouteObserver(talker),
  ],
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/favorites',
      builder: (context, state) => const FavouritesPage(),
    ),
    GoRoute(
      path: '/details',
      builder: (context, state) {
        final country = state.extra as CountryModel;
        return DetailsPage(country: country);
      },
    ),
  ],
);
