import 'package:clickandcare/ui/views/favorites/widgets/favorite_item.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'favorites_viewmodel.dart';

class FavoritesView extends StackedView<FavoritesViewModel> {
  const FavoritesView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FavoritesViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Favorites',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: viewModel.favoriteSalons.length,
        itemBuilder: (context, index) {
          final salon = viewModel.favoriteSalons[index];

          return FavoriteItem(
            name: salon.name,
            location: salon.location,
            rating: salon.rating,
            imageUrl: salon.image,
          );
        },
      ),
    );
  }

  @override
  FavoritesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      FavoritesViewModel();
}
