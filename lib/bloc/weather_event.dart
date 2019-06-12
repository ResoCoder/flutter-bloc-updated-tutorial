import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class WeatherEvent extends Equatable {
  WeatherEvent([List props = const []]) : super(props);
}

// The only event in this app is for getting the weather
class GetWeather extends WeatherEvent {
  final String cityName;

  // Equatable allows for a simple value equality in Dart.
  // All you need to do is to pass the class fields to the super constructor.
  GetWeather(this.cityName) : super([cityName]);
}
