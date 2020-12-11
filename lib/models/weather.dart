import 'package:flutter/material.dart';

class Weather {
  final String cityName;
  final double tempCels;

  Weather({@required this.cityName, @required this.tempCels});

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is Weather && o.cityName == cityName && o.tempCels == tempCels;
  }

  @override
  int get hashCode => cityName.hashCode ^ tempCels.hashCode;
}
