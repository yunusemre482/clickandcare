import 'package:clickandcare/app/app.locator.dart';
import 'package:clickandcare/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final _routerService = locator<RouterService>();

  void navigateToHomeView() {
    _routerService.navigateToMainView();
  }
}
