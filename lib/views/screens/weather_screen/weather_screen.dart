import 'package:flutter/material.dart';
import 'package:weather_app_with_api/controller/weather_service.dart';
import 'package:weather_app_with_api/model/weather_model.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final _weatherService = WeatherService('23474f85c62938615d08f2d30942d65e');
  WeatherModel? _weatherModel;

  _fetchWeather() async {
    String cityName = await _weatherService.getCurrentCity();

    try {
      final WeatherModel = await _weatherService.getWeatherModel(cityName);
      setState(() {
        _weatherModel = WeatherModel;
      });
    } catch (e) {}
  }

  @override
  void initState() {
    super.initState();
    _fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(_weatherModel?.cityNAme ?? "loading city..."),
          Text("${_weatherModel?.temperature.round()}+c"),
        ]),
      ),
    );
  }
}
