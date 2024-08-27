import 'package:flutter/material.dart';
import 'package:weather_qpp_ui/view/Widget/common_text.dart';

class OptionDay extends StatelessWidget {
  const OptionDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          const CommonText(text: "Sunday",fontWeight: FontWeight.bold,size: 20,),
          Container(color:Colors.transparent,
          child: Row(children: [
            Image.asset(
              "assets/images/rain-3311753-2754887 1.png",
              height: 40,
              width: 40,
              fit: BoxFit.fill,
            ),
            const SizedBox(width: 5,),
            const CommonText(text: "Rain",size: 18,),
          ],),
          ),
          Container(color:Colors.transparent,
            child: const Row(children: [
              CommonText(text: "+25°",fontWeight: FontWeight.bold,),
              SizedBox(width: 5,),
              CommonText(text: "+50°",fontWeight: FontWeight.bold,),
            ],),
          ),
        ],),
        const SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CommonText(text: "Monday",fontWeight: FontWeight.bold,size: 20,),
            Container(color:Colors.transparent,
              child: Row(children: [
                Image.asset(
                  "assets/images/download 1.png",
                  height: 40,
                  width: 40,
                  fit: BoxFit.fill,
                ),
                const SizedBox(width: 5,),
                const CommonText(text: "Sunny",size: 18,),
              ],),
            ),
            Container(color:Colors.transparent,
              child: const Row(children: [
                CommonText(text: "+25°",fontWeight: FontWeight.bold,),
                SizedBox(width: 5,),
                CommonText(text: "+50°",fontWeight: FontWeight.bold,),
              ],),
            ),
          ],),
        const SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CommonText(text: "Tuesday",fontWeight: FontWeight.bold,size: 20,),
            Container(color:Colors.transparent,
              child: Row(children: [
                Image.asset(
                  "assets/images/rainy-weather-4034172-3337336@0 2.png",
                  height: 40,
                  width: 40,
                  fit: BoxFit.fill,
                ),
                const SizedBox(width: 5,),
                const CommonText(text: "Cloudy",size: 18,),
              ],),
            ),
            Container(color:Colors.transparent,
              child: const Row(children: [
                CommonText(text: "+25°",fontWeight: FontWeight.bold,),
                SizedBox(width: 5,),
                CommonText(text: "+50°",fontWeight: FontWeight.bold,),
              ],),
            ),
          ],),
        const SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CommonText(text: "Wednessday",fontWeight: FontWeight.bold,size: 18,),
            Container(color:Colors.transparent,
              child: Row(children: [
                Image.asset(
                  "assets/images/cloudy-weather-3311758-2754892 2.png",
                  height: 40,
                  width: 40,
                  fit: BoxFit.fill,
                ),
                const SizedBox(width: 5,),
                const CommonText(text: "Thunder",size: 18,),
              ],),
            ),
            Container(color:Colors.transparent,
              child: const Row(children: [
                CommonText(text: "+25°",fontWeight: FontWeight.bold,),
                SizedBox(width: 5,),
                CommonText(text: "+50°",fontWeight: FontWeight.bold,),
              ],),
            ),
          ],),
        const SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CommonText(text: "ThursDay",fontWeight: FontWeight.bold,size: 19,),
            Container(color:Colors.transparent,
              child: Row(children: [
                Image.asset(
                  "assets/images/rain-3311753-2754887 1.png",
                  height: 40,
                  width: 40,
                  fit: BoxFit.fill,
                ),
                const SizedBox(width: 5,),
                const CommonText(text: "Rain",size: 18,),
              ],),
            ),
            Container(color:Colors.transparent,
              child: const Row(children: [
                CommonText(text: "+25°",fontWeight: FontWeight.bold,),
                SizedBox(width: 5,),
                CommonText(text: "+50°",fontWeight: FontWeight.bold,),
              ],),
            ),
          ],),
        const SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CommonText(text: "Friday",fontWeight: FontWeight.bold,size: 22,),
            Container(color:Colors.transparent,
              child: Row(children: [
                Image.asset(
                  "assets/images/rainy-weather-4034172-3337336@0 2.png",
                  height: 40,
                  width: 40,
                  fit: BoxFit.fill,
                ),
                const SizedBox(width: 5,),
                const CommonText(text: "Cloudy",size: 18,),
              ],),
            ),
            Container(color:Colors.transparent,
              child: const Row(children: [
                CommonText(text: "+25°",fontWeight: FontWeight.bold,),
                SizedBox(width: 5,),
                CommonText(text: "+50°",fontWeight: FontWeight.bold,),
              ],),
            ),
          ],),
        const SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CommonText(text: "Saturday",fontWeight: FontWeight.bold,size: 20,),
            Container(color:Colors.transparent,
              child: Row(children: [
                Image.asset(
                  "assets/images/download 1.png",
                  height: 40,
                  width: 40,
                  fit: BoxFit.fill,
                ),
                const SizedBox(width: 5,),
                const CommonText(text: "Sunny",size: 18,),
              ],),
            ),
            Container(color:Colors.transparent,
              child: const Row(children: [
                CommonText(text: "+25°",fontWeight: FontWeight.bold,),
                SizedBox(width: 5,),
                CommonText(text: "+50°",fontWeight: FontWeight.bold,),
              ],),
            ),
          ],),
      ],
    );
  }
}
