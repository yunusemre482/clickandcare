import 'package:clickandcare/ui/views/home/home_view.dart';
import 'package:clickandcare/ui/views/salon_details/salon_details_view.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:stacked/stacked.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'main_viewmodel.dart';

class MainView extends StackedView<MainViewModel> {
  const MainView({Key? key}) : super(key: key);

  final int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);

  static const List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    SalonDetailsView(),
    Text(
      'Index 2: Appointment',
      style: optionStyle,
    ),
    Text(
      'Index 3: Search',
      style: optionStyle,
    ),
    Text(
      'Index 4: Profile',
      style: optionStyle,
    ),
  ];

  @override
  Widget builder(
    BuildContext context,
    MainViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SafeArea(
          child: Center(
            child: _widgetOptions.elementAt(viewModel.selectedTabIndex),
          ),
        ),
        bottomNavigationBar: SafeArea(
            child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.grey.shade200),
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
                  child: Container(
                    child: GNav(
                      rippleColor: Colors.grey[300]!,
                      hoverColor: Colors.grey[100]!,
                      gap: 4,
                      activeColor: Colors.black,
                      iconSize: 24,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 9),
                      duration: const Duration(milliseconds: 400),
                      tabBackgroundColor: Colors.grey[100]!,
                      color: Colors.black,
                      tabs: const [
                        GButton(
                          icon: FontAwesomeIcons.home,
                          text: 'Home',
                          iconSize: 18,
                        ),
                        GButton(
                          icon: FontAwesomeIcons.heart,
                          text: 'Favorites',
                          iconSize: 18,
                          iconActiveColor: Colors.pinkAccent,
                        ),
                        GButton(
                          icon: FontAwesomeIcons.calendarXmark,
                          text: 'Appointment',
                          iconSize: 18,
                        ),
                        GButton(
                          icon: FontAwesomeIcons.search,
                          text: 'Search',
                          iconSize: 18,
                        ),
                        GButton(
                          icon: FontAwesomeIcons.user,
                          text: 'Profile',
                          iconSize: 18,
                        ),
                      ],
                      selectedIndex: viewModel.selectedTabIndex,
                      onTabChange: viewModel.updateSelectedTabIndex,
                    ),
                  ),
                ))));
  }

  @override
  MainViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MainViewModel();
}