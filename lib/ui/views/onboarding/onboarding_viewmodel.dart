import 'package:clickandcare/app/app.locator.dart';
import 'package:clickandcare/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class OnboardingViewModel extends BaseViewModel {
  final _navigationService = locator<RouterService>();

  void navigateToSignUp() {
    _navigationService.navigateToLoginView();
  }

  void navigateToSignIn() {
    _navigationService.navigateToLoginView();
  }
}
