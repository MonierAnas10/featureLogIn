// app_routes.dart

import 'package:taskorderrate/features/auth/log_in/presentation/screen/company_info_screen.dart';
import 'package:taskorderrate/features/auth/log_in/presentation/screen/personal_info_screen.dart';
import 'package:taskorderrate/features/auth/log_in/presentation/screen/tax_info_screen.dart';
import 'package:taskorderrate/features/splash_view.dart';

class RoutesNames {
  static const String splashScreen = '/splashScreen';
  static const String infoCompanyScreen = '/infoCompanyScreen';
  static const String infoPersonalScreen = '/infoPersonalScreen';
  static const String infoTaxScreen = '/infoTaxScreen';

  final routs = {
    RoutesNames.splashScreen: (_) => const SplashView(),
    RoutesNames.infoCompanyScreen: (_) => const CompanyInfoScreen(),
    RoutesNames.infoPersonalScreen: (_) => const PersonalInfoScreen(),
    RoutesNames.infoTaxScreen: (_) => const TaxInfoScreen(),
  };
}
