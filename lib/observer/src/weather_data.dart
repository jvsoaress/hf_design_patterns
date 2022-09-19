import 'observer.dart';
import 'subject.dart';

class WeatherData implements Subject {
  final _observers = <Observer>[];

  double get temperature => _temperature;
  double _temperature = 0;

  double get pressure => _pressure;
  double _pressure = 0;

  double get humidity => _humidity;
  double _humidity = 0;

  @override
  void notifyObservers() {
    for (final observer in _observers) {
      observer.update();
    }
  }

  @override
  void registerObserver(Observer observer) {
    _observers.add(observer);
  }

  @override
  void removeObserver(Observer observer) {
    _observers.remove(observer);
  }

  void measurementsChanged() {
    notifyObservers();
  }

  void setMeasurements(double temperature, double humidity, double pressure) {
    _temperature = temperature;
    _humidity = humidity;
    _pressure = pressure;
    measurementsChanged();
  }
}
