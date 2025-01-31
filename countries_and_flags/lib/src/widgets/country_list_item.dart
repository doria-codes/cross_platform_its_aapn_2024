import 'package:countries_and_flags/src/models/country_model.dart';
import 'package:countries_and_flags/src/models/favourite_country.dart';
import 'package:countries_and_flags/src/pages/details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CountryListItem extends ConsumerWidget {
  final CountryModel country;

  const CountryListItem({super.key, required this.country});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favourites = ref.watch(favouriteCountryProvider);
    final isFavourite = favourites.any((fav) => fav.country.id == country.id);
    final favouriteNotifier = ref.read(favouriteCountryProvider.notifier);

    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsPage(country: country)),
              );
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: Image.network(
                      country.flagUrl,
                      semanticLabel: country.flagAlt,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  country.cca2,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
                Text(
                  country.shortName,
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Positioned(
            top: 8,
            right: 8,
            child: CircleAvatar(
              radius: 16,
              backgroundColor: Colors.white,
              child: IconButton(
                icon: Icon(
                  isFavourite ? Icons.favorite : Icons.favorite_border,
                  color: isFavourite ? Colors.red : null,
                  size: 18,
                ),
                onPressed: () {
                  favouriteNotifier.toggleFavourite(country);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
