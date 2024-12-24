import 'package:clickandcare/ui/views/salon_details/widgets/reviews_list.dart';
import 'package:clickandcare/ui/views/salon_details/widgets/salon_header.dart';
import 'package:clickandcare/ui/views/salon_details/widgets/services_list.dart';
import 'package:clickandcare/ui/views/salon_details/widgets/staff_list.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'salon_details_viewmodel.dart';

class SalonDetailsView extends StatelessWidget {
  final String? salonId;

  const SalonDetailsView({this.salonId, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SalonDetailsViewModel>.reactive(
        onViewModelReady: (model) {
          model.initialize(salonId ?? '1');
        },
        viewModelBuilder: () => SalonDetailsViewModel(),
        builder: (context, model, child) {
          if (model.isBusy) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (model.salon == null) {
            return const Center(
              child: Text('Salon not found.'),
            );
          }

          return Scaffold(
            appBar: AppBar(
              title: const Text('Salon Details'),
            ),
            body: const SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SalonHeader(),
                    SizedBox(height: 24),
                    ServicesList(),
                    SizedBox(height: 24),
                    StaffList(),
                    SizedBox(height: 24),
                    ReviewsList(),
                  ],
                ),
              ),
            ),
          );
        });
  }

  @override
  SalonDetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SalonDetailsViewModel();
}
