// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Nereus';

  @override
  String get appTagline => 'SmartHydro water telemetry';

  @override
  String get loginTitle => 'Sign in to your account';

  @override
  String get emailLabel => 'Email';

  @override
  String get passwordLabel => 'Password';

  @override
  String get loginAction => 'Sign in';

  @override
  String get forgotPassword => 'Forgot your password?';

  @override
  String get forgotPasswordTitle => 'Reset password';

  @override
  String get forgotPasswordHint =>
      'We will send instructions if the email exists.';

  @override
  String get sendInstructions => 'Send instructions';

  @override
  String get backToLogin => 'Back to sign in';

  @override
  String get branchPickerTitle => 'Choose a branch';

  @override
  String get branchPickerSubtitle =>
      'Branch context is sent with every request.';

  @override
  String get continueAction => 'Continue';

  @override
  String get navHome => 'Home';

  @override
  String get navDevices => 'Devices';

  @override
  String get navAlerts => 'Alerts';

  @override
  String get navTickets => 'Tickets';

  @override
  String get navProfile => 'Profile';

  @override
  String get kpiOnline => 'Online';

  @override
  String get kpiSilent => 'Silent';

  @override
  String get kpiAlerts => 'Active alerts';

  @override
  String get kpiReadingsToday => 'Readings today';

  @override
  String get retry => 'Retry';

  @override
  String get offlineBanner => 'Offline. Showing cached data.';

  @override
  String get emptyGeneric => 'Nothing to show.';

  @override
  String get errorGeneric => 'We could not load this data.';

  @override
  String get logout => 'Log out';

  @override
  String get settings => 'Settings';

  @override
  String get themeSystem => 'System';

  @override
  String get themeLight => 'Light';

  @override
  String get themeDark => 'Dark';

  @override
  String get language => 'Language';

  @override
  String get acknowledge => 'Acknowledge';

  @override
  String get acknowledgeBulk => 'Acknowledge selected';

  @override
  String get searchDevices => 'Search devices';

  @override
  String get mapView => 'Map';

  @override
  String get listView => 'List';

  @override
  String get createTicket => 'Create ticket';

  @override
  String get ticketSubject => 'Subject';

  @override
  String get ticketDescription => 'Description';

  @override
  String get ticketPriority => 'Priority';

  @override
  String get save => 'Save';

  @override
  String get cancel => 'Cancel';
}
