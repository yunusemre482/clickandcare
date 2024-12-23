import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'appointment_viewmodel.dart';

class AppointmentView extends StackedView<AppointmentViewModel> {
  const AppointmentView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AppointmentViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
        child: const Center(
          child: Text(
            'Appointment',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  @override
  AppointmentViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AppointmentViewModel();
}
