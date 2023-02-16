import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_grab/feature/weather/presentation/bloc/weather_bloc.dart';
import 'package:flutter_grab/feature/weather/presentation/pages/weather_page.dart';
import 'config/app_theme.dart';
import 'di/injection.dart' as di;
import 'config/routes.dart' as router;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => di.locator<WeatherBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Grap Klone',
        theme: AppTheme.light,
        initialRoute: WeatherPage.route,
        onGenerateRoute: router.generateRoute,
        home: const WeatherPage(),
      ),
    );
  }
}
