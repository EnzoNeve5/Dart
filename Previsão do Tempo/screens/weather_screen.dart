import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/weather_provider.dart';

class WeatherScreen extends StatelessWidget {
  final TextEditingController _cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var weatherProvider = Provider.of<WeatherProvider>(context);

    return Scaffold(
      appBar: AppBar(title: Text("Previsão do Tempo")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _cityController,
              decoration: InputDecoration(
                labelText: "Digite a cidade",
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    if (_cityController.text.isNotEmpty) {
                      weatherProvider.fetchWeather(_cityController.text);
                    }
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            weatherProvider.isLoading
                ? CircularProgressIndicator()
                : weatherProvider.weather != null
                ? Column(
              children: [
                Text(weatherProvider.weather!.city, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                Image.network("https://openweathermap.org/img/w/${weatherProvider.weather!.icon}.png"),
                Text("${weatherProvider.weather!.temperature}°C", style: TextStyle(fontSize: 32)),
                Text(weatherProvider.weather!.description, style: TextStyle(fontSize: 18)),
              ],
            )
                : Text("Nenhum dado disponível"),
          ],
        ),
      ),
    );
  }
}
