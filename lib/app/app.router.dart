// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i12;
import 'package:stacked/stacked.dart' as _i11;
import 'package:stacked_services/stacked_services.dart' as _i10;

import '../ui/views/booking/booking_view.dart' as _i8;
import '../ui/views/home/home_view.dart' as _i2;
import '../ui/views/login/login_view.dart' as _i1;
import '../ui/views/main/main_view.dart' as _i9;
import '../ui/views/salon_details/salon_details_view.dart' as _i6;
import '../ui/views/signup/signup_view.dart' as _i5;
import '../ui/views/splash/splash_view.dart' as _i4;
import '../ui/views/staff_profiles/staff_profiles_view.dart' as _i7;
import '../ui/views/startup/startup_view.dart' as _i3;

final stackedRouter =
    StackedRouterWeb(navigatorKey: _i10.StackedService.navigatorKey);

class StackedRouterWeb extends _i11.RootStackRouter {
  StackedRouterWeb({_i12.GlobalKey<_i12.NavigatorState>? navigatorKey})
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    LoginViewRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.LoginView(),
      );
    },
    HomeViewRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomeView(),
      );
    },
    StartupViewRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.StartupView(),
      );
    },
    SplashViewRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SplashView(),
      );
    },
    SignupViewRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.SignupView(),
      );
    },
    SalonDetailsViewRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.SalonDetailsView(),
      );
    },
    StaffProfilesViewRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.StaffProfilesView(),
      );
    },
    BookingViewRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.BookingView(),
      );
    },
    MainViewRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.MainView(),
      );
    },
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(
          LoginViewRoute.name,
          path: '/',
        ),
        _i11.RouteConfig(
          HomeViewRoute.name,
          path: '/home-view',
        ),
        _i11.RouteConfig(
          StartupViewRoute.name,
          path: '/startup-view',
        ),
        _i11.RouteConfig(
          SplashViewRoute.name,
          path: '/splash-view',
        ),
        _i11.RouteConfig(
          SignupViewRoute.name,
          path: '/signup-view',
        ),
        _i11.RouteConfig(
          SalonDetailsViewRoute.name,
          path: '/salon-details-view',
        ),
        _i11.RouteConfig(
          StaffProfilesViewRoute.name,
          path: '/staff-profiles-view',
        ),
        _i11.RouteConfig(
          BookingViewRoute.name,
          path: '/booking-view',
        ),
        _i11.RouteConfig(
          MainViewRoute.name,
          path: '/main-view',
        ),
      ];
}

/// generated route for
/// [_i1.LoginView]
class LoginViewRoute extends _i11.PageRouteInfo<void> {
  const LoginViewRoute()
      : super(
          LoginViewRoute.name,
          path: '/',
        );

  static const String name = 'LoginView';
}

/// generated route for
/// [_i2.HomeView]
class HomeViewRoute extends _i11.PageRouteInfo<void> {
  const HomeViewRoute()
      : super(
          HomeViewRoute.name,
          path: '/home-view',
        );

  static const String name = 'HomeView';
}

/// generated route for
/// [_i3.StartupView]
class StartupViewRoute extends _i11.PageRouteInfo<void> {
  const StartupViewRoute()
      : super(
          StartupViewRoute.name,
          path: '/startup-view',
        );

  static const String name = 'StartupView';
}

/// generated route for
/// [_i4.SplashView]
class SplashViewRoute extends _i11.PageRouteInfo<void> {
  const SplashViewRoute()
      : super(
          SplashViewRoute.name,
          path: '/splash-view',
        );

  static const String name = 'SplashView';
}

/// generated route for
/// [_i5.SignupView]
class SignupViewRoute extends _i11.PageRouteInfo<void> {
  const SignupViewRoute()
      : super(
          SignupViewRoute.name,
          path: '/signup-view',
        );

  static const String name = 'SignupView';
}

/// generated route for
/// [_i6.SalonDetailsView]
class SalonDetailsViewRoute extends _i11.PageRouteInfo<void> {
  const SalonDetailsViewRoute()
      : super(
          SalonDetailsViewRoute.name,
          path: '/salon-details-view',
        );

  static const String name = 'SalonDetailsView';
}

/// generated route for
/// [_i7.StaffProfilesView]
class StaffProfilesViewRoute extends _i11.PageRouteInfo<void> {
  const StaffProfilesViewRoute()
      : super(
          StaffProfilesViewRoute.name,
          path: '/staff-profiles-view',
        );

  static const String name = 'StaffProfilesView';
}

/// generated route for
/// [_i8.BookingView]
class BookingViewRoute extends _i11.PageRouteInfo<void> {
  const BookingViewRoute()
      : super(
          BookingViewRoute.name,
          path: '/booking-view',
        );

  static const String name = 'BookingView';
}

/// generated route for
/// [_i9.MainView]
class MainViewRoute extends _i11.PageRouteInfo<void> {
  const MainViewRoute()
      : super(
          MainViewRoute.name,
          path: '/main-view',
        );

  static const String name = 'MainView';
}

extension RouterStateExtension on _i10.RouterService {
  Future<dynamic> navigateToLoginView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const LoginViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToHomeView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const HomeViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToStartupView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const StartupViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToSplashView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const SplashViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToSignupView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const SignupViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToSalonDetailsView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const SalonDetailsViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToStaffProfilesView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const StaffProfilesViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToBookingView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const BookingViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToMainView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const MainViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithLoginView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const LoginViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithHomeView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const HomeViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithStartupView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const StartupViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithSplashView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const SplashViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithSignupView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const SignupViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithSalonDetailsView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const SalonDetailsViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithStaffProfilesView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const StaffProfilesViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithBookingView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const BookingViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithMainView(
      {void Function(_i11.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const MainViewRoute(),
      onFailure: onFailure,
    );
  }
}
