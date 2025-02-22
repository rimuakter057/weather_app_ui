import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/Screens/bottom_nav.dart';
import 'binding/getx_binding.dart';

class WeatherAppUi extends StatelessWidget {

  const WeatherAppUi({super.key, });

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:  BottomNavPage (),
      initialBinding: GetXBindings(),
    );
  }
}