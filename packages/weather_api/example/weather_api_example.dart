import 'package:weather_api/weather_api.dart';

void main() async {
  IWeatherApi mockWeatherApi = MockWeatherApi();
  var weatherByCity = await mockWeatherApi.getWeatherWithCityName('London');
  print(weatherByCity);

  var weatherByCoordinates =
      await mockWeatherApi.getWeatherWithCoordinates(51.5085, -0.1257);
  print(weatherByCoordinates);
}
