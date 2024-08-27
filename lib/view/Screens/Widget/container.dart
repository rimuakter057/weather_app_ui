import 'package:flutter/material.dart';
import 'package:weather_qpp_ui/view/Widget/common_text.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .15,
      width: MediaQuery.sizeOf(context).width * .7,
      decoration: BoxDecoration(
        color: Colors.blue,
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
                const CommonText(
                  text: "30%",
                  fontWeight: FontWeight.bold,
                ),
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
                const CommonText(
                  text: "20%",
                  fontWeight: FontWeight.bold,
                ),
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
                  fit: BoxFit.fill,
                  color: Colors.grey,
                ),
                const CommonText(
                  text: "9km/hour",
                  fontWeight: FontWeight.w600,
                ),
                const CommonText(
                  text: "Wind Speed",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
