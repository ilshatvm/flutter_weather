// ignore_for_file: invalid_annotation_target

import 'package:weather_repository/src/model/model.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_response.freezed.dart';
part 'weather_response.g.dart';

@freezed
class WeatherResponse with _$WeatherResponse {
  const factory WeatherResponse({
    Coord? coord,
    List<Weather>? weather,
    String? base,
    @JsonKey(name: 'main') MainModel? mainModel,
    int? visibility,
    Wind? wind,
    Clouds? clouds,
    int? dt,
    Sys? sys,
    int? timezone,
    int? id,
    String? name,
    int? cod,
  }) = _WeatherResponse;

  factory WeatherResponse.fromJson(Map<String, Object?> json) =>
      _$WeatherResponseFromJson(json);
}
