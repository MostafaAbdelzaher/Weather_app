class WeatherDataModel {
  final int? temperature;
  final String? cityName;
  final String? image;
  final String? weatherIcon;
  final String? weatherMessage;
  final String? weatherTitle;

  WeatherDataModel({
    this.weatherTitle,
    this.image,
    this.cityName,
    this.weatherIcon,
    this.weatherMessage,
    this.temperature,
  });
}
