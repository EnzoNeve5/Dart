import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/weather_model.dart';

class WeatherService {
  static const String apiKey = "51997cd1d43278966eaa128d647c091f"; // Pegue no OpenWeatherMap
  static const String baseUrl = "https://api.openweathermap.org/data/2.5/weather";

  Future<Weather> getWeather(String city) async {
    final response = await http.get(Uri.parse("$baseUrl?q=$city&appid=$apiKey&units=metric&lang=pt"));

    if (response.statusCode == 200) {
      return Weather.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Erro ao buscar clima");
    }
  }
}
