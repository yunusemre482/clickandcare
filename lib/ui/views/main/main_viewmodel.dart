import 'package:clickandcare/app/app.locator.dart';
import 'package:clickandcare/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class MainViewModel extends BaseViewModel {
  final _routerService = locator<RouterService>();
  late var _selectedTabIndex = 0;

  int get selectedTabIndex => _selectedTabIndex;

  void updateSelectedTabIndex(int index) {
    _selectedTabIndex = index;
    notifyListeners();
  }

  void navigateToHome() {
    _routerService.navigateToHomeView();
  }

  void navigateToFavorite() {}

  void navigateToAppointment() {}

  void navigateToSearch() {}

  void navigateToProfile() {}
}
