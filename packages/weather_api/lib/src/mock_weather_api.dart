import 'package:weather_api/weather_api.dart';

class MockWeatherApi implements IWeatherApi {
  @override
  Future<Map<String, dynamic>> getWeatherWithCityName(String cityName) async {
    return Future.delayed(
      Duration(seconds: 2),
      () => {
        "coord": {"lon": -0.1257, "lat": 51.5085},
        "weather": [
          {
            "id": 801,
            "main": "Clouds",
            "description": "few clouds",
            "icon": "02d"
          }
        ],
        "base": "stations",
        "main": {
          "temp": 287.44,
          "feels_like": 286.94,
          "temp_min": 286.27,
          "temp_max": 288.43,
          "pressure": 1025,
          "humidity": 77
        },
        "visibility": 10000,
        "wind": {"speed": 5.66, "deg": 300},
        "clouds": {"all": 20},
        "dt": 1708272494,
        "sys": {
          "type": 2,
          "id": 2075535,
          "country": "GB",
          "sunrise": 1708240205,
          "sunset": 1708276751
        },
        "timezone": 0,
        "id": 2643743,
        "name": "London",
        "cod": 200
      },
    );
  }

  @override
  Future<Map<String, dynamic>> getWeatherWithCoordinates(
      double latitude, double longitude) {
    return Future.delayed(
      Duration(seconds: 2),
      () => {
        "coord": {"lon": -0.1257, "lat": 51.5085},
        "weather": [
          {
            "id": 801,
            "main": "Clouds",
            "description": "few clouds",
            "icon": "02d"
          }
        ],
        "base": "stations",
        "main": {
          "temp": 287.44,
          "feels_like": 286.94,
          "temp_min": 286.27,
          "temp_max": 288.43,
          "pressure": 1025,
          "humidity": 77
        },
        "visibility": 10000,
        "wind": {"speed": 5.66, "deg": 300},
        "clouds": {"all": 20},
        "dt": 1708272494,
        "sys": {
          "type": 2,
          "id": 2075535,
          "country": "GB",
          "sunrise": 1708240205,
          "sunset": 1708276751
        },
        "timezone": 0,
        "id": 2643743,
        "name": "London",
        "cod": 200
      },
    );
  }
}
