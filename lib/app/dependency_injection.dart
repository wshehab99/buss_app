import 'package:buss_app/app/app_preferences.dart';
import 'package:buss_app/presentation/company/view_model/company_view_model.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../presentation/booking/view_model/booking_view_model.dart';

abstract class DependencyInjection {
  static final GetIt instance = GetIt.instance;
  static Future initApp() async {
    //shared preferences
    final SharedPreferences pref = await SharedPreferences.getInstance();

    // app preferences

    instance.registerLazySingleton<AppPreferences>(() => AppPreferences(pref));
  }

  static void initCompany() {
    if (!instance.isRegistered<CompanyViewModel>()) {
      instance.registerFactory<CompanyViewModel>(() => CompanyViewModel());
    }
  }

  static void initBooking() {
    if (!instance.isRegistered<BookingViewModel>()) {
      instance.registerFactory<BookingViewModel>(() => BookingViewModel());
    }
  }
}
