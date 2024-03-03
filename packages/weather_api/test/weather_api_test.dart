import 'package:test/test.dart';
import 'package:weather_api/weather_api.dart';

void main() {
  group('MockWeatherApi tests', () {
    IWeatherApi api = MockWeatherApi();

    setUp(() {
      api = MockWeatherApi();
    });

    test('Test getWeatherWithCityName', () async {
      final result = await api.getWeatherWithCityName('London');
      // final result = await api.getWeatherWithCityName('London');
      expect(result['name'], equals('London'));
    });

    test('Test getWeatherWithCoordinates', () async {
      final result = await api.getWeatherWithCoordinates(51.5085, -0.1257);
      expect(result['coord']['lat'], equals(51.5085));
      expect(result['coord']['lon'], equals(-0.1257));
    });
  });
}
