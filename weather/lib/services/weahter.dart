import '../../services/networking.dart';
import 'package:weather/services/location.dart';

const apiKey = '09e2b080c8be215911289266bdca5a04';
const openWeatherAppURL = 'https://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  String getWeatherCondition(int condition) {
    if (condition < 300) {
      return '🌩️';
    } else if (condition < 400) {
      return '🌧️';
    } else if (condition < 600) {
      return '☔';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫️';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 884) {
      return '☁️';
    } else {
      return '🤷‍♂️';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'Its\'s 🍿 time.';
    } else if (temp > 20) {
      return 'Time for 🩳 and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();

    NetworkHelper helper = NetworkHelper(
        url:
            '$openWeatherAppURL?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');
    final weatherData = await helper.getData();
    return weatherData;
  }

  Future getCityWeather(String cityName) async{
    var url = '$openWeatherAppURL?q=$cityName&appid=$apiKey&units=metric';
    NetworkHelper helper1 = NetworkHelper(url: url);
    var weatherData = await helper1.getData();
    return weatherData;
  }
}
