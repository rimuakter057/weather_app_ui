import 'package:flutter/material.dart';
import 'package:weather_qpp_ui/view/Screens/bottom_nav.dart';


void main() {
  runApp( const WeatherAppUi());
}
class WeatherAppUi extends StatelessWidget {

  const WeatherAppUi({super.key, });

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  BottomNavPage (),
    );
  }
}
