import 'package:clickandcare/ui/views/home/widgets/category_buttons.dart';
import 'package:clickandcare/ui/views/home/widgets/home_searchbar.dart';
import 'package:clickandcare/ui/views/home/widgets/top_rated_salons.dart';
import 'package:clickandcare/ui/views/home/widgets/trending_services.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const ModernSearchBar(hintText: "Hairs, nails ,waxing...",),
              const SizedBox(height: 16),
              const CategoryButtons(),
              const SizedBox(height: 24),
              TopRatedSalons(salons: viewModel.getTopRatedSalons()),
              const SizedBox(height: 24),
              TrendingServices(services: viewModel.getTrendingServices()),
            ],
          ),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
