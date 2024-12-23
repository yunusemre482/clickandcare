import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'salon_details_viewmodel.dart';

class SalonDetailsView extends StackedView<SalonDetailsViewModel> {
  const SalonDetailsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SalonDetailsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  SalonDetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SalonDetailsViewModel();
}
