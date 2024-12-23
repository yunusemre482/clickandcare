import 'package:clickandcare/ui/views/home/widgets/salon_list.dart';
import 'package:clickandcare/ui/views/home/widgets/search_bar.dart';
import 'package:clickandcare/ui/views/home/widgets/tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:clickandcare/ui/common/app_colors.dart';
import 'package:clickandcare/ui/common/ui_helpers.dart';

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
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const HomeSearchBar(),
            HomeTabBar(
                selectedTab: viewModel.selectedTab,
                onTabChange: viewModel.changeTab),
            Expanded(
              child: SalonList(salons: viewModel.salons),
            ),
          ],
        ),
      ),
    ));
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
