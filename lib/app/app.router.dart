// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i16;
import 'package:stacked/stacked.dart' as _i15;
import 'package:stacked_services/stacked_services.dart' as _i14;

import '../ui/views/onboarding/onboarding_view.dart' as _i0;
import '../ui/views/appointment/appointment_view.dart' as _i11;
import '../ui/views/booking/booking_view.dart' as _i8;
import '../ui/views/favorites/favorites_view.dart' as _i12;
import '../ui/views/home/home_view.dart' as _i2;
import '../ui/views/login/login_view.dart' as _i1;
import '../ui/views/main/main_view.dart' as _i9;
import '../ui/views/profile/profile_view.dart' as _i10;
import '../ui/views/salon_details/salon_details_view.dart' as _i6;
import '../ui/views/search/search_view.dart' as _i13;
import '../ui/views/signup/signup_view.dart' as _i5;
import '../ui/views/splash/splash_view.dart' as _i4;
import '../ui/views/staff_profiles/staff_profiles_view.dart' as _i7;
import '../ui/views/startup/startup_view.dart' as _i3;

final stackedRouter =
    StackedRouterWeb(navigatorKey: _i14.StackedService.navigatorKey);

class StackedRouterWeb extends _i15.RootStackRouter {
  StackedRouterWeb({_i16.GlobalKey<_i16.NavigatorState>? navigatorKey})
      : super(navigatorKey);

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    OnboardingViewRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i0.OnboardingView(),
      );
    },
    LoginViewRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.LoginView(),
      );
    },
    HomeViewRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomeView(),
      );
    },
    StartupViewRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.StartupView(),
      );
    },
    SplashViewRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.SplashView(),
      );
    },
    SignupViewRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.SignupView(),
      );
    },
    SalonDetailsViewRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.SalonDetailsView(),
      );
    },
    StaffProfilesViewRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.StaffProfilesView(),
      );
    },
    BookingViewRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.BookingView(),
      );
    },
    MainViewRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i9.MainView(),
      );
    },
    ProfileViewRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i10.ProfileView(),
      );
    },
    AppointmentViewRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.AppointmentView(),
      );
    },
    FavoritesViewRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.FavoritesView(),
      );
    },
    SearchViewRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.SearchView(),
      );
    },
  };

  @override
  List<_i15.RouteConfig> get routes => [
        _i15.RouteConfig(
          OnboardingViewRoute.name,
          path: '/onboarding-view',
        ),
        _i15.RouteConfig(
          LoginViewRoute.name,
          path: '/',
        ),
        _i15.RouteConfig(
          HomeViewRoute.name,
          path: '/home-view',
        ),
        _i15.RouteConfig(
          StartupViewRoute.name,
          path: '/startup-view',
        ),
        _i15.RouteConfig(
          SplashViewRoute.name,
          path: '/splash-view',
        ),
        _i15.RouteConfig(
          SignupViewRoute.name,
          path: '/signup-view',
        ),
        _i15.RouteConfig(
          SalonDetailsViewRoute.name,
          path: '/salon-details-view',
        ),
        _i15.RouteConfig(
          StaffProfilesViewRoute.name,
          path: '/staff-profiles-view',
        ),
        _i15.RouteConfig(
          BookingViewRoute.name,
          path: '/booking-view',
        ),
        _i15.RouteConfig(
          MainViewRoute.name,
          path: '/main-view',
        ),
        _i15.RouteConfig(
          ProfileViewRoute.name,
          path: '/profile-view',
        ),
        _i15.RouteConfig(
          AppointmentViewRoute.name,
          path: '/appointment-view',
        ),
        _i15.RouteConfig(
          FavoritesViewRoute.name,
          path: '/favorites-view',
        ),
        _i15.RouteConfig(
          SearchViewRoute.name,
          path: '/search-view',
        ),
      ];
}

/// generated route for
/// [_i0.OnboardingView]
class OnboardingViewRoute extends _i15.PageRouteInfo<void> {
  const OnboardingViewRoute()
      : super(
          OnboardingViewRoute.name,
          path: '/onboarding-view',
        );

  static const String name = 'OnboardingView';
}

/// generated route for
/// [_i1.LoginView]
class LoginViewRoute extends _i15.PageRouteInfo<void> {
  const LoginViewRoute()
      : super(
          LoginViewRoute.name,
          path: '/',
        );

  static const String name = 'LoginView';
}

/// generated route for
/// [_i2.HomeView]
class HomeViewRoute extends _i15.PageRouteInfo<void> {
  const HomeViewRoute()
      : super(
          HomeViewRoute.name,
          path: '/home-view',
        );

  static const String name = 'HomeView';
}

/// generated route for
/// [_i3.StartupView]
class StartupViewRoute extends _i15.PageRouteInfo<void> {
  const StartupViewRoute()
      : super(
          StartupViewRoute.name,
          path: '/startup-view',
        );

  static const String name = 'StartupView';
}

/// generated route for
/// [_i4.SplashView]
class SplashViewRoute extends _i15.PageRouteInfo<void> {
  const SplashViewRoute()
      : super(
          SplashViewRoute.name,
          path: '/splash-view',
        );

  static const String name = 'SplashView';
}

/// generated route for
/// [_i5.SignupView]
class SignupViewRoute extends _i15.PageRouteInfo<void> {
  const SignupViewRoute()
      : super(
          SignupViewRoute.name,
          path: '/signup-view',
        );

  static const String name = 'SignupView';
}

/// generated route for
/// [_i6.SalonDetailsView]
class SalonDetailsViewRoute extends _i15.PageRouteInfo<void> {
  const SalonDetailsViewRoute()
      : super(
          SalonDetailsViewRoute.name,
          path: '/salon-details-view',
        );

  static const String name = 'SalonDetailsView';
}

/// generated route for
/// [_i7.StaffProfilesView]
class StaffProfilesViewRoute extends _i15.PageRouteInfo<void> {
  const StaffProfilesViewRoute()
      : super(
          StaffProfilesViewRoute.name,
          path: '/staff-profiles-view',
        );

  static const String name = 'StaffProfilesView';
}

/// generated route for
/// [_i8.BookingView]
class BookingViewRoute extends _i15.PageRouteInfo<void> {
  const BookingViewRoute()
      : super(
          BookingViewRoute.name,
          path: '/booking-view',
        );

  static const String name = 'BookingView';
}

/// generated route for
/// [_i9.MainView]
class MainViewRoute extends _i15.PageRouteInfo<void> {
  const MainViewRoute()
      : super(
          MainViewRoute.name,
          path: '/main-view',
        );

  static const String name = 'MainView';
}

/// generated route for
/// [_i10.ProfileView]
class ProfileViewRoute extends _i15.PageRouteInfo<void> {
  const ProfileViewRoute()
      : super(
          ProfileViewRoute.name,
          path: '/profile-view',
        );

  static const String name = 'ProfileView';
}

/// generated route for
/// [_i11.AppointmentView]
class AppointmentViewRoute extends _i15.PageRouteInfo<void> {
  const AppointmentViewRoute()
      : super(
          AppointmentViewRoute.name,
          path: '/appointment-view',
        );

  static const String name = 'AppointmentView';
}

/// generated route for
/// [_i12.FavoritesView]
class FavoritesViewRoute extends _i15.PageRouteInfo<void> {
  const FavoritesViewRoute()
      : super(
          FavoritesViewRoute.name,
          path: '/favorites-view',
        );

  static const String name = 'FavoritesView';
}

/// generated route for
/// [_i13.SearchView]
class SearchViewRoute extends _i15.PageRouteInfo<void> {
  const SearchViewRoute()
      : super(
          SearchViewRoute.name,
          path: '/search-view',
        );

  static const String name = 'SearchView';
}

extension RouterStateExtension on _i14.RouterService {
  Future<dynamic> navigateToOnboardingView(
      {void Function(_i15.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const OnboardingViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToLoginView(
      {void Function(_i15.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const LoginViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToHomeView(
      {void Function(_i15.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const HomeViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToStartupView(
      {void Function(_i15.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const StartupViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToSplashView(
      {void Function(_i15.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const SplashViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToSignupView(
      {void Function(_i15.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const SignupViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToSalonDetailsView(
      {void Function(_i15.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const SalonDetailsViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToStaffProfilesView(
      {void Function(_i15.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const StaffProfilesViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToBookingView(
      {void Function(_i15.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const BookingViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToMainView(
      {void Function(_i15.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const MainViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToProfileView(
      {void Function(_i15.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const ProfileViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToAppointmentView(
      {void Function(_i15.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const AppointmentViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToFavoritesView(
      {void Function(_i15.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const FavoritesViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToSearchView(
      {void Function(_i15.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const SearchViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithLoginView(
      {void Function(_i15.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const LoginViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithHomeView(
      {void Function(_i15.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const HomeViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithStartupView(
      {void Function(_i15.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const StartupViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithSplashView(
      {void Function(_i15.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const SplashViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithSignupView(
      {void Function(_i15.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const SignupViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithSalonDetailsView(
      {void Function(_i15.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const SalonDetailsViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithStaffProfilesView(
      {void Function(_i15.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const StaffProfilesViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithBookingView(
      {void Function(_i15.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const BookingViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithMainView(
      {void Function(_i15.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const MainViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithProfileView(
      {void Function(_i15.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const ProfileViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithAppointmentView(
      {void Function(_i15.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const AppointmentViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithFavoritesView(
      {void Function(_i15.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const FavoritesViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithSearchView(
      {void Function(_i15.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const SearchViewRoute(),
      onFailure: onFailure,
    );
  }
}
