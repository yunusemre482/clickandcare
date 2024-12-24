import 'package:clickandcare/ui/views/appointment/widgets/appointment_item.dart';
import 'package:clickandcare/ui/views/appointment/widgets/new_appointment_form.dart';
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
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            'Appointments',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          )),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: viewModel.appointments.length,
        itemBuilder: (context, index) {
          final appointment = viewModel.appointments[index];
          return AppointmentItem(
            salon: appointment['salon']!,
            service: appointment['service']!,
            date: appointment['date']!,
            time: appointment['time']!,
            imageUrl: appointment['image']!,
          );
        },
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) {
              return const NewAppointmentForm();
            },
          );
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: Colors.blueAccent,
        focusColor: Colors.blueAccent,
        child: const Icon(
          Icons.add,
          color: Colors.white,
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
