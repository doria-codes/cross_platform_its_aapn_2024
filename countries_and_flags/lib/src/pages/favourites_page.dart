import 'package:countries_and_flags/src/widgets/favourites_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavouritesPage extends ConsumerWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: FavouriteCountryList(),
    );
  }
}
