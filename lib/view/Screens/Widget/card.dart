import 'package:flutter/material.dart';

import 'package:weather_qpp_ui/view/Widget/common_text.dart';

class CardWidget extends StatelessWidget {

  const CardWidget({super.key, l});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height*.15,
        width: MediaQuery.sizeOf(context).width*.25,
        child: Column(children: [
         const CommonText(text: "10 AM"),
          Image.asset(
            "assets/images/cloudy-weather-3311758-2754892 2.png",
            height: 50,
            width: 50,
            fit: BoxFit.fill,
          ),
          const CommonText(text: " 45°",fontWeight: FontWeight.bold,),
        ],),
      ),
    );
  }
}
