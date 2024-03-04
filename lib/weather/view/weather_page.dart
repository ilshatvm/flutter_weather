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

  TextStyle _textStyle({
    double fontSize = 15.0,
    FontWeight? fontWeight = FontWeight.w500,
  }) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: textColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      color: bgColor,
      child: Column(
        children: [
          Text(
            "Today",
            style: _textStyle(fontSize: 25.0),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.cloud_sun_rain_fill,
                size: 100.0,
                color: textColor,
              ),
              const SizedBox(width: 20.0),
              Text(
                temperature,
                style: _textStyle(fontSize: 100.0),
              ),
            ],
          ),
          Text(
            mainWeather,
            style: _textStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 15.0),
          Text(
            location,
            style: _textStyle(),
          ),
          const SizedBox(height: 15.0),
          Text(
            date,
            style: _textStyle(),
          ),
          const SizedBox(height: 15.0),
          SizedBox(
            height: 24.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Feels like: $feelsLike",
                  style: _textStyle(),
                ),
                VerticalDivider(
                  width: 20,
                  thickness: 1.0,
                  indent: 7,
                  endIndent: 7,
                  color: textColor,
                ),
                Text(
                  "Sunset $sunset",
                  style: _textStyle(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
