import 'package:ResoFlutterBloc/bloc/weather_bloc.dart';
import 'package:ResoFlutterBloc/cubit/weather_cubit.dart';
import 'package:ResoFlutterBloc/repositories/weather_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screens/weather_search_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Bloc Weather',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: BlocProvider(
          create: (context) => WeatherBloc(FakeWeatherRepository()),
          child: WeatherSearchPage(),
        ));
  }
}
