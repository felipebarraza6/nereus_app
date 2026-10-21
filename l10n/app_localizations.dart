import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_es.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('es'),
    Locale('en'),
  ];

  /// No description provided for @appName.
  ///
  /// In es, this message translates to:
  /// **'Nereus'**
  String get appName;

  /// No description provided for @appTagline.
  ///
  /// In es, this message translates to:
  /// **'Telemetría hídrica SmartHydro'**
  String get appTagline;

  /// No description provided for @loginTitle.
  ///
  /// In es, this message translates to:
  /// **'Ingresa a tu cuenta'**
  String get loginTitle;

  /// No description provided for @emailLabel.
  ///
  /// In es, this message translates to:
  /// **'Correo electrónico'**
  String get emailLabel;

  /// No description provided for @passwordLabel.
  ///
  /// In es, this message translates to:
  /// **'Contraseña'**
  String get passwordLabel;

  /// No description provided for @loginAction.
  ///
  /// In es, this message translates to:
  /// **'Entrar'**
  String get loginAction;

  /// No description provided for @forgotPassword.
  ///
  /// In es, this message translates to:
  /// **'¿Olvidaste tu contraseña?'**
  String get forgotPassword;

  /// No description provided for @forgotPasswordTitle.
  ///
  /// In es, this message translates to:
  /// **'Recuperar contraseña'**
  String get forgotPasswordTitle;

  /// No description provided for @forgotPasswordHint.
  ///
  /// In es, this message translates to:
  /// **'Te enviaremos instrucciones si el correo existe en el sistema.'**
  String get forgotPasswordHint;

  /// No description provided for @sendInstructions.
  ///
  /// In es, this message translates to:
  /// **'Enviar instrucciones'**
  String get sendInstructions;

  /// No description provided for @backToLogin.
  ///
  /// In es, this message translates to:
  /// **'Volver al ingreso'**
  String get backToLogin;

  /// No description provided for @branchPickerTitle.
  ///
  /// In es, this message translates to:
  /// **'Elige una sucursal'**
  String get branchPickerTitle;

  /// No description provided for @branchPickerSubtitle.
  ///
  /// In es, this message translates to:
  /// **'El contexto de sucursal se envía en cada consulta.'**
  String get branchPickerSubtitle;

  /// No description provided for @continueAction.
  ///
  /// In es, this message translates to:
  /// **'Continuar'**
  String get continueAction;

  /// No description provided for @navHome.
  ///
  /// In es, this message translates to:
  /// **'Inicio'**
  String get navHome;

  /// No description provided for @navDevices.
  ///
  /// In es, this message translates to:
  /// **'Dispositivos'**
  String get navDevices;

  /// No description provided for @navAlerts.
  ///
  /// In es, this message translates to:
  /// **'Alertas'**
  String get navAlerts;

  /// No description provided for @navTickets.
  ///
  /// In es, this message translates to:
  /// **'Tickets'**
  String get navTickets;

  /// No description provided for @navProfile.
  ///
  /// In es, this message translates to:
  /// **'Perfil'**
  String get navProfile;

  /// No description provided for @kpiOnline.
  ///
  /// In es, this message translates to:
  /// **'En línea'**
  String get kpiOnline;

  /// No description provided for @kpiSilent.
  ///
  /// In es, this message translates to:
  /// **'Silenciosos'**
  String get kpiSilent;

  /// No description provided for @kpiAlerts.
  ///
  /// In es, this message translates to:
  /// **'Alertas activas'**
  String get kpiAlerts;

  /// No description provided for @kpiReadingsToday.
  ///
  /// In es, this message translates to:
  /// **'Lecturas hoy'**
  String get kpiReadingsToday;

  /// No description provided for @retry.
  ///
  /// In es, this message translates to:
  /// **'Reintentar'**
  String get retry;

  /// No description provided for @offlineBanner.
  ///
  /// In es, this message translates to:
  /// **'Sin conexión. Mostramos datos en caché.'**
  String get offlineBanner;

  /// No description provided for @emptyGeneric.
  ///
  /// In es, this message translates to:
  /// **'No hay información para mostrar.'**
  String get emptyGeneric;

  /// No description provided for @errorGeneric.
  ///
  /// In es, this message translates to:
  /// **'No pudimos cargar los datos.'**
  String get errorGeneric;

  /// No description provided for @logout.
  ///
  /// In es, this message translates to:
  /// **'Cerrar sesión'**
  String get logout;

  /// No description provided for @settings.
  ///
  /// In es, this message translates to:
  /// **'Ajustes'**
  String get settings;

  /// No description provided for @themeSystem.
  ///
  /// In es, this message translates to:
  /// **'Sistema'**
  String get themeSystem;

  /// No description provided for @themeLight.
  ///
  /// In es, this message translates to:
  /// **'Claro'**
  String get themeLight;

  /// No description provided for @themeDark.
  ///
  /// In es, this message translates to:
  /// **'Oscuro'**
  String get themeDark;

  /// No description provided for @language.
  ///
  /// In es, this message translates to:
  /// **'Idioma'**
  String get language;

  /// No description provided for @acknowledge.
  ///
  /// In es, this message translates to:
  /// **'Reconocer'**
  String get acknowledge;

  /// No description provided for @acknowledgeBulk.
  ///
  /// In es, this message translates to:
  /// **'Reconocer seleccionadas'**
  String get acknowledgeBulk;

  /// No description provided for @searchDevices.
  ///
  /// In es, this message translates to:
  /// **'Buscar dispositivos'**
  String get searchDevices;

  /// No description provided for @mapView.
  ///
  /// In es, this message translates to:
  /// **'Mapa'**
  String get mapView;

  /// No description provided for @listView.
  ///
  /// In es, this message translates to:
  /// **'Lista'**
  String get listView;

  /// No description provided for @createTicket.
  ///
  /// In es, this message translates to:
  /// **'Crear ticket'**
  String get createTicket;

  /// No description provided for @ticketSubject.
  ///
  /// In es, this message translates to:
  /// **'Asunto'**
  String get ticketSubject;

  /// No description provided for @ticketDescription.
  ///
  /// In es, this message translates to:
  /// **'Descripción'**
  String get ticketDescription;

  /// No description provided for @ticketPriority.
  ///
  /// In es, this message translates to:
  /// **'Prioridad'**
  String get ticketPriority;

  /// No description provided for @save.
  ///
  /// In es, this message translates to:
  /// **'Guardar'**
  String get save;

  /// No description provided for @cancel.
  ///
  /// In es, this message translates to:
  /// **'Cancelar'**
  String get cancel;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'es'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
