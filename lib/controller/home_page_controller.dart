


import 'package:get/get.dart';
import 'package:weather_qpp_ui/app/url.dart';
import 'package:weather_qpp_ui/model/weather_model.dart';

import '../network_services/network_caller.dart';

class HomepageController extends GetxController{
 bool _inProgress = false;
bool get inProgress => _inProgress;
String ?_errorMessage ;
String? get errorMessage => _errorMessage;
WeatherModel ?_weatherModel ;
WeatherModel? get weatherModel => _weatherModel;

Future <bool> fetchWeatherData()async {
  bool isSuccess = false;
  _inProgress = true;
    update();
    final NetworkResponse response = await NetworkCaller.getRequest(AppUrl.weatherApp);
    if(response.isSuccess){
      _weatherModel = WeatherModel.fromJson(response.responseData!);
      isSuccess = true;
      _errorMessage = null;
    }else{
      _errorMessage = response.errorMessage;
    }
    _inProgress = false;
    update();
    return isSuccess;
}
}



