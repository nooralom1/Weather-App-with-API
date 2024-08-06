class WeatherModel {
  final String cityNAme;
  final double temperature;
  final String mainCondition;

  WeatherModel(
      {required this.cityNAme,
      required this.temperature,
      required this.mainCondition});

  factory WeatherModel.formJson(Map<String, dynamic> json) {
    return WeatherModel(

      cityNAme: json['name'],
      temperature: json['main']['temp'].toDouble(),
      mainCondition: json['weather'][0]['main'],
    );
  }
}
