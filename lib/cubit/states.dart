import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

abstract class WeatherStates {}

class WeatherInitialState extends WeatherStates {}

class GetLocationWeatherLoadingState extends WeatherStates {}

class GetLocationWeatherSuccessState extends WeatherStates {}

class GetLocationWeatherErrorState extends WeatherStates {}

class UpdateIdLoadingState extends WeatherStates {}

class UpdateIWeatherSuccessState extends WeatherStates {}

class UpdateIWeatherErrorState extends WeatherStates {}
