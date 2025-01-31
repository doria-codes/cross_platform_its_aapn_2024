import 'package:countries_and_flags/src/models/favourite_country.dart';
import 'package:countries_and_flags/src/providers/country_provider.dart';
import 'package:countries_and_flags/src/widgets/country_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    searchController.removeListener(_onSearchChanged);
    searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    ref.read(countryProvider.notifier).searchBy(searchController.text);
  }

  void _resetSearch() {
    searchController.clear();
    ref.read(countryProvider.notifier).fetchAllCountries();
  }

  @override
  Widget build(BuildContext context) {
    final countries = ref.watch(countryProvider);
    final favourites = ref.watch(favouriteCountryProvider);

    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: _resetSearch,
          child: const Text('Countries'),
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: () {
                  context.push('/favorites');
                },
              ),
              if (favourites.isNotEmpty)
                Positioned(
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(6.0),
                    decoration: const BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      '${favourites.length}',
                      style: const TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              decoration: const InputDecoration(
                labelText: 'Search',
              ),
            ),
          ),
          Expanded(
            child: countries.when(
              data: (countryList) {
                if (countryList.isEmpty) {
                  return const Center(
                    child: Text(
                      'R U SURE U SPELLED THAT RIGHT, MATE?',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  );
                }
                return GridView.builder(
                  padding: const EdgeInsets.all(8.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.5,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: countryList.length,
                  itemBuilder: (context, index) {
                    return CountryListItem(country: countryList[index]);
                  },
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stackTrace) =>
                  Center(child: Text('Error: $error')),
            ),
          ),
        ],
      ),
    );
  }
}
