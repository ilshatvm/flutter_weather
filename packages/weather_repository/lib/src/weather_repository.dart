import 'package:weather_api/weather_api.dart';
import 'package:weather_repository/src/model/model.dart';

class WeatherRepository {
  final IWeatherApi _weatherApi;

  const WeatherRepository({required IWeatherApi weatherApi})
      : _weatherApi = weatherApi;

  Future<WeatherResponse> getWeatherWithCityName(String cityName) async {
    final result = await _weatherApi.getWeatherWithCityName(cityName);
    return WeatherResponse.fromJson(result);
  }

  Future<WeatherResponse> getWeatherWithCoordinates(
    double latitude,
    double longitude,
  ) async {
    final result =
        await _weatherApi.getWeatherWithCoordinates(latitude, longitude);
    return WeatherResponse.fromJson(result);
  }
}
