import 'package:clickandcare/ui/views/home/widgets/home_searchbar.dart';
import 'package:clickandcare/ui/views/search/widgets/salon_list.dart';
import 'package:clickandcare/ui/views/search/widgets/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'search_viewmodel.dart';

class SearchView extends StackedView<SearchViewModel> {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SearchViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const ModernSearchBar(
              hintText: "Find your perfect salon...",
            ),
            HomeTabBar(
                selectedTab: viewModel.selectedTab,
                onTabChange: viewModel.changeTab),
            Expanded(
              child: viewModel.isLoading
                  ? const Center(
                      child: CircularProgressIndicator(), // Show a loader
                    )
                  : SalonList(salons: viewModel.salons),
            ),
          ],
        ),
      ),
    ));
  }

  @override
  void onViewModelReady(SearchViewModel viewModel) {
    super.onViewModelReady(viewModel);
    viewModel
        .initialize(); // Ensure initialize is called when the ViewModel is ready
  }

  @override
  SearchViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SearchViewModel();
}
