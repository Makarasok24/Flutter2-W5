import 'package:w5/Exercise1/logger/console_logger.dart';
import 'package:w5/Exercise1/model/ride_pref.dart';
import 'package:w5/Exercise1/service/ride_prefereces_service.dart';

void main() {
  final service = RidePreferencesService();
  final consoleLogger = ConsoleLogger();

  service.addListener(consoleLogger);

  service.setPreferences(RidePreference(name: "Dear customer"));
  service.setPreferences(RidePreference(name: "I hope you have a good day"));
}
