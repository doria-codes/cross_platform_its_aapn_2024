import 'package:countries_and_flags/src/models/country_model.dart';
import 'package:countries_and_flags/src/models/favourite_country.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailsPage extends ConsumerWidget {
  final CountryModel country;

  const DetailsPage({super.key, required this.country});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favourites = ref.watch(favouriteCountryProvider);
    final isFavourite = favourites.any((fav) => fav.country.id == country.id);
    final favouriteNotifier = ref.read(favouriteCountryProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Text(country.shortName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(country.flagUrl,
                semanticLabel: country.flagAlt, width: 200, height: 200),
            const SizedBox(height: 20),
            Text(country.longName,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            IconButton(
              icon: Icon(isFavourite ? Icons.favorite : Icons.favorite_border),
              onPressed: () {
                favouriteNotifier.toggleFavourite(country);
              },
              iconSize: 30,
              color: isFavourite ? Colors.red : null,
            ),
          ],
        ),
      ),
    );
  }
}
