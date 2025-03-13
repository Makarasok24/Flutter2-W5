import 'package:w5/Exercise1/model/ride_pref.dart';
import 'package:w5/Exercise1/service/ride_preferences_listener.dart';

class ConsoleLogger implements RidePreferencesListener {
  @override
  void onRidePreferenceSelected(RidePreference preferenceSelected) {
    print('Selected preference: ${preferenceSelected.name}');
  }
}
