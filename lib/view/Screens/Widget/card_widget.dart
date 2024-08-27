import 'package:flutter/material.dart';

import '../../Widget/common_text.dart';

class CardSecond extends StatelessWidget {
  const CardSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue,
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height*.05,
        width: MediaQuery.sizeOf(context).width*.33,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(children: [
            const CommonText(text: "10 AM"),
            Image.asset(
              "assets/images/cloudy-weather-3311758-2754892 2.png",
              height: 30,
              width: 30,
              fit: BoxFit.fill,
            ),
            const CommonText(text: " 25°",fontWeight: FontWeight.bold,),
          ],),
        )
      ),
    );
  }
}
