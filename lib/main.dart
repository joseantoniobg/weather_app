import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './bloc/weather_bloc.dart';
import './pages/weather_search_page.dart';
import './weather_repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      home: BlocProvider(
        create: (context) => WeatherBloc(FakeWeatherRepository()),
        child: WeatherSearchPage(),
      ),
    );
  }
}
