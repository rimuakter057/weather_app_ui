import 'package:flutter/material.dart';
import 'package:weather_qpp_ui/view/Widget/common_text.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .3,
      width: MediaQuery.sizeOf(context).width * .9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.indigo.shade300,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -20,
            left: 2,
            child: Image.asset(
              "assets/images/cloudy-weather-3311758-2754892 2.png",
              height: 100,
              width: 100,
              fit: BoxFit.fill,
            ),
          ),
          const Positioned(
            top: 40,
            right: 55,
            child: CommonText(
              text: '25°',   fontWeight: FontWeight.bold,
              size: 30,
            ),
          ),
          const Positioned(
            top: 50,
            right: 58,
            child: CommonText(
              text: '/',     fontWeight: FontWeight.w500,
              size: 40,
            ),
          ),
          const Positioned(
            top: 60,
            right: 30,
            child: CommonText(
              text: '5°',
              fontWeight: FontWeight.w400,
              size: 30,
            ),
          ),
          Positioned(
            bottom: 15,
            left: 10,
            right: 10,
            child:Container(
            height: MediaQuery.sizeOf(context).height * .15,
            width: MediaQuery.sizeOf(context).width * .7,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/insurance 1.png",
                        height: 40,
                        width: 40,
                        fit: BoxFit.fill,
                      ),
                      const CommonText(text: "30%",fontWeight: FontWeight.bold,),
                      const CommonText(text: "precipitation"),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/insurance 1 (1).png",
                        height: 40,
                        width: 40,
                        fit: BoxFit.fill,
                      ),
                      const CommonText(text: "20%",fontWeight: FontWeight.bold,),
                      const CommonText(text: "Humidity"),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/insurance 1 (2).png",
                        height: 40,
                        width: 40,
                        fit: BoxFit.fill,color: Colors.grey,
                      ),
                      const CommonText(text: "9km/hour",fontWeight: FontWeight.w600,),
                      const CommonText(text: "Wind Speed",),
                    ],
                  ),

                ],
              ),
            ),
          ), ),
        ],
      ),
    );
  }
}
