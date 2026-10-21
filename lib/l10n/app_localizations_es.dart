// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appName => 'Nereus';

  @override
  String get appTagline => 'Telemetría hídrica SmartHydro';

  @override
  String get loginTitle => 'Ingresa a tu cuenta';

  @override
  String get emailLabel => 'Correo electrónico';

  @override
  String get passwordLabel => 'Contraseña';

  @override
  String get loginAction => 'Entrar';

  @override
  String get forgotPassword => '¿Olvidaste tu contraseña?';

  @override
  String get forgotPasswordTitle => 'Recuperar contraseña';

  @override
  String get forgotPasswordHint =>
      'Te enviaremos instrucciones si el correo existe en el sistema.';

  @override
  String get sendInstructions => 'Enviar instrucciones';

  @override
  String get backToLogin => 'Volver al ingreso';

  @override
  String get branchPickerTitle => 'Elige una sucursal';

  @override
  String get branchPickerSubtitle =>
      'El contexto de sucursal se envía en cada consulta.';

  @override
  String get continueAction => 'Continuar';

  @override
  String get navHome => 'Inicio';

  @override
  String get navDevices => 'Dispositivos';

  @override
  String get navAlerts => 'Alertas';

  @override
  String get navTickets => 'Tickets';

  @override
  String get navProfile => 'Perfil';

  @override
  String get kpiOnline => 'En línea';

  @override
  String get kpiSilent => 'Silenciosos';

  @override
  String get kpiAlerts => 'Alertas activas';

  @override
  String get kpiReadingsToday => 'Lecturas hoy';

  @override
  String get retry => 'Reintentar';

  @override
  String get offlineBanner => 'Sin conexión. Mostramos datos en caché.';

  @override
  String get emptyGeneric => 'No hay información para mostrar.';

  @override
  String get errorGeneric => 'No pudimos cargar los datos.';

  @override
  String get logout => 'Cerrar sesión';

  @override
  String get settings => 'Ajustes';

  @override
  String get themeSystem => 'Sistema';

  @override
  String get themeLight => 'Claro';

  @override
  String get themeDark => 'Oscuro';

  @override
  String get language => 'Idioma';

  @override
  String get acknowledge => 'Reconocer';

  @override
  String get acknowledgeBulk => 'Reconocer seleccionadas';

  @override
  String get searchDevices => 'Buscar dispositivos';

  @override
  String get mapView => 'Mapa';

  @override
  String get listView => 'Lista';

  @override
  String get createTicket => 'Crear ticket';

  @override
  String get ticketSubject => 'Asunto';

  @override
  String get ticketDescription => 'Descripción';

  @override
  String get ticketPriority => 'Prioridad';

  @override
  String get save => 'Guardar';

  @override
  String get cancel => 'Cancelar';
}
