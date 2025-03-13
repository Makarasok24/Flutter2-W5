import 'package:w5/Exercise1/model/ride_pref.dart';
import 'package:w5/Exercise1/service/ride_preferences_listener.dart';

class RidePreferencesService {
  final List<RidePreferencesListener> _ridePrefListeners = [];

  void addListener(RidePreferencesListener listener) {
    _ridePrefListeners.add(listener);
  }

  void setPreferences(RidePreference ridePreference) {
    print("set Preferences : ${ridePreference.name}");
    notifyListeners(ridePreference);
  }

  void removeListener(RidePreferencesListener listener) {
    _ridePrefListeners.remove(listener);
  }

  void notifyListeners(RidePreference preference) {
    if (_ridePrefListeners.isEmpty) {
      print(" No listeners!");
    }
    for (var listener in _ridePrefListeners) {
      print(" Notifying listener: $listener");
      listener.onRidePreferenceSelected(preference);
    }
  }
}
