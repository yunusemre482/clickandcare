import 'package:clickandcare/services/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:clickandcare/app/app.bottomsheets.dart';
import 'package:clickandcare/app/app.dialogs.dart';
import 'package:clickandcare/app/app.locator.dart';
import 'package:clickandcare/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator(
    stackedRouter: stackedRouter,
  );
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationParser: stackedRouter.defaultRouteParser(),
      routerDelegate: stackedRouter.delegate(initialRoutes: [
        const LoginViewRoute(),
      ]),
      theme: CustomThemeService.lightTheme,
      darkTheme: CustomThemeService.darkTheme,
    );
  }
}
