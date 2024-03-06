import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather/common/common.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6B98B3),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 34.0, vertical: 53.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WeatherMainWidget(
                bgColor: Color(0xFF91B4C6),
                textColor: Color(0xFFCAD7DF),
              ),
              const SizedBox(height: 35.0),
              Container(
                height: 192.0,
                color: Colors.red,
              ),
              const SizedBox(height: 35.0),
              const Text("Random Text", style: TextStyle(fontSize: 20.0)),
              const SizedBox(height: 10.0),
              const Text(
                  "Improve him believe opinion offered met and end cheered forbade. Friendly as stronger speedily by recurred. Son interest wandered sir addition end say. Manners beloved affixed picture men ask."),
            ],
          ),
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget(
    this.text, {
    super.key,
    this.color = Colors.white,
    this.size = 15.0,
    this.weight = FontWeight.w500,
  });

  final Color color;
  final double size;
  final FontWeight weight;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        fontWeight: weight,
        color: color,
      ),
    );
  }
}

class WeatherMainWidget extends StatelessWidget {
  const WeatherMainWidget({
    super.key,
    required this.bgColor,
    required this.textColor,
  });

  final Color bgColor;
  final Color textColor;
  final String temperature = "24";
  final String feelsLike = "28";
  final String mainWeather = "Cloudy";
  final String location = "California, Los Angeles";
  final String date = "21 Oct 2019";
  final String sunset = "18:20";

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      color: bgColor,
      child: Column(
        children: [
          TextWidget("Today", color: textColor, size: 25.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.cloud_sun_rain_fill,
                size: 100.0,
                color: textColor,
              ),
              const SizedBox(width: 20.0),
              TextWidget(temperature, color: textColor, size: 100.0),
            ],
          ),
          TextWidget(
            mainWeather,
            size: 20.0,
            color: textColor,
            weight: FontWeight.w600,
          ),
          const SizedBox(height: 15.0),
          TextWidget(location, color: textColor),
          const SizedBox(height: 15.0),
          TextWidget(date, color: textColor),
          const SizedBox(height: 15.0),
          SizedBox(
            height: 24.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextWidget("Feels like: $feelsLike", color: textColor),
                VerticalDivider(
                  width: 20,
                  thickness: 1.0,
                  indent: 7,
                  endIndent: 7,
                  color: textColor,
                ),
                TextWidget("Sunset $sunset", color: textColor),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
