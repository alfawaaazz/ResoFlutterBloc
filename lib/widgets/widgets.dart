import 'package:ResoFlutterBloc/models/weather.dart';
import 'package:ResoFlutterBloc/screens/weather_search_page.dart';
import 'package:flutter/material.dart';

Widget buildInitialInput() {
  return Center(
    child: CityInputField(),
  );
}

Widget buildLoading() {
  return Center(
    child: CircularProgressIndicator(),
  );
}

Column buildColumnWithData(Weather weather) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Text(
        weather.cityName,
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.w700,
        ),
      ),
      Text(
        "${weather.tempCels.toStringAsFixed(1)} °C",
        style: TextStyle(fontSize: 80),
      ),
      CityInputField(),
    ],
  );
}
