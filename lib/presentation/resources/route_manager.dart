import 'package:buss_app/app/dependency_injection.dart';
import 'package:buss_app/presentation/booking/view/booking_view.dart';
import 'package:buss_app/presentation/company/view/company_view.dart';
import 'package:buss_app/presentation/login/login_view.dart';
import 'package:buss_app/presentation/parent/parent_view.dart';
import 'package:buss_app/presentation/qr_code/qr_code_view.dart';
import 'package:buss_app/presentation/register/register_view.dart';
import 'package:buss_app/presentation/resources/string_manager.dart';
import 'package:buss_app/presentation/splash/splash_view.dart';
import 'package:buss_app/presentation/student/student_view.dart';
import 'package:buss_app/presentation/tracking/tracking_view.dart';
import 'package:buss_app/presentation/tracking_map/tracking_map_view.dart';
import 'package:buss_app/presentation/view_booking/view_booking_view.dart';
import 'package:buss_app/presentation/welcome/welcome_view.dart';
import 'package:flutter/material.dart';

abstract class RouteManager {
  static const String splash = "/";
  static const String login = "/login";
  static const String register = "/register";
  static const String booking = "/booking";
  static const String tracking = "/tracking";
  static const String welcome = "/welcome";
  static const String student = "/student";
  static const String company = "/company";

  static const String parent = "/parent";

  static const String trackingMap = "/tracking_map";
  static const String viewBooking = "/view_booking";
  static const String qrCode = "/qr_code";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteManager.splash:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case RouteManager.login:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case RouteManager.register:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case RouteManager.booking:
        DependencyInjection.initBooking();
        return MaterialPageRoute(builder: (_) => const BookingView());
      case RouteManager.tracking:
        return MaterialPageRoute(builder: (_) => const TrackingView());
      case RouteManager.welcome:
        return MaterialPageRoute(builder: (_) => const WelcomeView());
      case RouteManager.student:
        return MaterialPageRoute(builder: (_) => const StudentView());
      case RouteManager.company:
        DependencyInjection.initCompany();
        return MaterialPageRoute(builder: (_) => const CompanyView());
      case RouteManager.parent:
        return MaterialPageRoute(builder: (_) => const ParentView());
      case RouteManager.trackingMap:
        final args = settings.arguments as String;
        return MaterialPageRoute(
            builder: (_) => TrackingMapView(username: args));
      case RouteManager.viewBooking:
        return MaterialPageRoute(builder: (_) => const ViewBookingView());
      case RouteManager.qrCode:
        return MaterialPageRoute(builder: (_) => const QRCodeView());
      default:
        return _default();
    }
  }

  static Route<dynamic> _default() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(title: const Text(StringManager.noRouteFound)),
              body: const Center(
                child: Text(StringManager.noRouteFound),
              ),
            ));
  }
}
