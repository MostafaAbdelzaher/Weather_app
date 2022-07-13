import 'package:bloc/bloc.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/states.dart';
import 'package:weather_app/model/weather_model.dart';

import '../services/weather.dart';

class WeatherCubit extends Cubit<WeatherStates> {
  WeatherCubit() : super(WeatherInitialState());

  static WeatherCubit get(context) => BlocProvider.of(context);

  void getLocationData() async {
    await WeatherModel().getLocationWeather().then((value) {
      upDateId(value);
    }).catchError((onError) {
      emit(GetLocationWeatherErrorState());
    });
  }

  getWeatherData({required String cityName}) async {
    await WeatherModel().getWeatherData(cityName).then((value) {
      upDateId(value);
    }).catchError((onError) {
      print(onError.toString());
      emit(GetLocationWeatherErrorState());
    });
  }

  WeatherDataModel weatherDataModel = WeatherDataModel();

  upDateId(weatherData) {
    weatherDataModel = WeatherDataModel(
        weatherTitle: WeatherModel().getTitle(weatherData["weather"][0]["id"]),
        image: WeatherModel().getImage(weatherData["main"]["temp"].toInt()!),
        cityName: weatherData["name"],
        temperature: weatherData["main"]["temp"].toInt(),
        weatherIcon:
            WeatherModel().getWeatherIcon(weatherData["weather"][0]["id"]),
        weatherMessage:
            WeatherModel().getMessage(weatherData["main"]["temp"].toInt()!));

    emit(UpdateIWeatherSuccessState());
  }
}
