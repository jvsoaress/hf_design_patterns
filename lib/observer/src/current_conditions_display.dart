import 'observer.dart';
import 'weather_data.dart';

import 'display_element.dart';

class CurrentConditionsDisplay implements Observer, DisplayElement {
  final WeatherData _weatherData;

  double? _temperature;
  double? _humidity;

  CurrentConditionsDisplay(WeatherData weatherData)
      : _weatherData = weatherData {
    weatherData.registerObserver(this);
  }

  @override
  void update() {
    _temperature = _weatherData.temperature;
    _humidity = _weatherData.humidity;
    display();
  }

  @override
  void display() {
    print(
      'current conditions: $_temperature F degrees and $_humidity % humidity',
    );
  }
}
