abstract interface class IWeatherApi {
  Future getWeatherWithCityName(String cityName);
  Future getWeatherWithCoordinates(double latitude, double longitude);
}
