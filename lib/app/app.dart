import 'package:clickandcare/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:clickandcare/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:clickandcare/ui/views/home/home_view.dart';
import 'package:clickandcare/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:clickandcare/ui/views/login/login_view.dart';
import 'package:clickandcare/ui/views/splash/splash_view.dart';
import 'package:clickandcare/ui/views/signup/signup_view.dart';
import 'package:clickandcare/ui/views/salon_details/salon_details_view.dart';
import 'package:clickandcare/ui/views/staff_profiles/staff_profiles_view.dart';
import 'package:clickandcare/ui/views/booking/booking_view.dart';
import 'package:clickandcare/services/authentication_service.dart';
import 'package:clickandcare/services/staff_service.dart';
import 'package:clickandcare/services/theme_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: LoginView, initial: true),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: SplashView),
    MaterialRoute(page: SignupView),
    MaterialRoute(page: SalonDetailsView),
    MaterialRoute(page: StaffProfilesView),
    MaterialRoute(page: BookingView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthenticationService),
    LazySingleton(classType: StaffService),
    LazySingleton(classType: CustomThemeService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
