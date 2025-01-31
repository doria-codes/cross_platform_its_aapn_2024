import 'package:countries_and_flags/src/models/country_model.dart';
import 'package:countries_and_flags/src/models/favourite_country.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class FavouriteCountryList extends ConsumerWidget {
  const FavouriteCountryList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favourites = ref.watch(favouriteCountryProvider);

    if (favourites.isEmpty) {
      return const Center(child: Text('No favorites added yet.'));
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: favourites.length,
        itemBuilder: (context, index) {
          final favourite = favourites[index];

          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              leading: Image.network(
                favourite.country.flagUrl,
                semanticLabel: favourite.country.flagAlt,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(
                favourite.country.shortName,
                style: const TextStyle(color: Colors.black),
              ),
              onTap: () {
                context.push('/details', extra: favourite.country);
              },
            ),
          );
        },
      ),
    );
  }
}
