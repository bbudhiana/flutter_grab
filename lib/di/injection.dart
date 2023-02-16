import '../feature/weather/data/datasources/remote_data_source.dart';
import '../feature/weather/data/repositories/weather_repository_impl.dart';
import '../feature/weather/domain/repositories/weather_repository.dart';
import '../feature/weather/domain/usecases/get_current_weather.dart';

import 'package:http/http.dart' as http;
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../feature/weather/presentation/bloc/weather_bloc.dart';

final locator = GetIt.instance;

void init() async {
  // bloc
  locator.registerFactory<WeatherBloc>(() => WeatherBloc(locator()));

  locator.registerLazySingleton(() => GetCurrentWeather(locator()));

  locator.registerLazySingleton<WeatherRepository>(
    () => WeatherRepositoryImpl(
      remoteDataSource: locator(),
    ),
  );

  locator.registerLazySingleton<RemoteDataSource>(
    () => RemoteDataSourceImpl(
      client: locator(),
    ),
  );

  locator.registerLazySingleton(() => http.Client());
}
