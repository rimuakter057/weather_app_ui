import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:weather_qpp_ui/app/url.dart';
import 'package:weather_qpp_ui/model/weather_model.dart';
import 'package:weather_qpp_ui/view/Widget/common_text.dart';
import '../../controller/home_page_controller.dart';
import 'Widget/Container.dart';
import 'Widget/app_bar.dart';
import 'Widget/card.dart';
import 'Widget/card_widget.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key, });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  final HomepageController _homepageController = Get.find<HomepageController>();
WeatherModel?weatherModel;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getNewList();
   // getWeatherData ();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.lightBlue.shade900,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const AppBarWidget(),
              const SizedBox(
                height: 10,
              ),
/*
              Text(_weatherModel.weather?.isNotEmpty == true
                  ? _weatherModel.weather![0].main.toString()
                  : "Loading..."),*/

              //Text(_weatherModel.weather![0].main.toString()),
 /*             const CommonText(
                text: "Mostly Sunny",
                size: 20,
              ),*/
              Image.asset(
                "assets/images/cloudy-weather-3311758-2754892 2.png",
                height: 135,
                width: 150,
                fit: BoxFit.fill,
              ),
              const CommonText(

                text: "25°",
                size: 30,fontWeight: FontWeight.bold,
              ),
             // Text(_weatherModel.id.toString()),
              const CommonText(
                text: "27 August 2024",
                size: 16,
              ),
              const SizedBox(height: 10,),
              const ContainerWidget(),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonText(text: 'Today'),
                  CommonText(text: '7-day for casts'),
                ],
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .15,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const CardWidget();
                    }),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonText(text: 'Other Cities'),
                  CommonText(text: "+",fontWeight: FontWeight.bold,size: 20,),
                ],
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .08,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const CardSecond();
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }


  Future<void> _getNewList() async {
    final bool isSuccess = await _homepageController.fetchWeatherData();
    if (!isSuccess) {
      Get.snackbar(
        "error",
        _homepageController.errorMessage!,
        colorText: Colors.white,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }




/*
Client http = Client();
//server request
WeatherModel _weatherModel = WeatherModel();
getWeatherData ()async {
  Uri uri = Uri.parse(AppUrl.weatherApp);
  final response = await http.get(uri);

  if (response.statusCode==200){
    _weatherModel =WeatherModel.fromJson(jsonDecode(response.body));
  }else{
    debugPrint("failed");
  }
  print(response.body);

}*/


}
