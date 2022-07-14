import 'location.dart';
import 'networking.dart';

const openWeatherURL = 'https://api.openweathermap.org/data/2.5/weather';
const apiKey = "42209445c36ba8a0bd0dc4eeb9e104be";

class WeatherModel {
  Future getWeatherData(String cityName) async {
    NetworkHelper networkHelper =
        NetworkHelper('$openWeatherURL?q=$cityName&appid=$apiKey&units=metric');
    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();

    await location.getCurrentLocation();
    NetworkHelper networkHelper = NetworkHelper(
        '$openWeatherURL?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');
    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }

  String getTitle(int temp) {
    if (temp > 30) {
      return "So Hot";
    } else if (temp > 25) {
      return ' Beautiful Morning';
    } else if (temp > 20) {
      return 'Rainy';
    } else if (temp < 15) {
      return 'Cold';
    } else {
      return 'Beautiful Night';
    }
  }

  String getImage(int temp) {
    if (temp >= 28) {
      return "images/2.png";
    } else if (temp <= 15) {
      return "images/3.png";
    } else {
      return "images/1.png";
    }
  }
}
