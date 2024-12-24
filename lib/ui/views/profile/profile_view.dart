import 'package:clickandcare/ui/views/profile/widgets/action_buttons.dart';
import 'package:clickandcare/ui/views/profile/widgets/profile_header.dart';
import 'package:clickandcare/ui/views/profile/widgets/recent_activity.dart';
import 'package:clickandcare/ui/views/profile/widgets/statistics_section.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'profile_viewmodel.dart';

class ProfileView extends StackedView<ProfileViewModel> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ProfileViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            ProfileHeader(),
            SizedBox(height: 24),
            ActionButtons(),
            SizedBox(height: 24),
            StatisticsSection(),
            SizedBox(height: 24),
            RecentActivity(),
          ],
        ),
      ),
    );
  }

  @override
  ProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProfileViewModel();
}
