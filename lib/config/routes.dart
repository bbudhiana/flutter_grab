import 'package:flutter/material.dart';
//import '/core/arguments/base_argument.dart';

import '../feature/weather/presentation/pages/weather_page.dart';

Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case WeatherPage.route:
      return MaterialPageRoute(builder: (context) => const WeatherPage());
  }
  return null;
}
