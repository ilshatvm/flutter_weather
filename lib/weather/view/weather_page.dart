import 'package:flutter/material.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34.0, vertical: 53.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 386.0,
              color: Colors.red,
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
    );
  }
}
