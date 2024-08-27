import 'package:flutter/material.dart';
import 'package:weather_qpp_ui/view/Widget/common_text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade900,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
               Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                style: IconButton.styleFrom(
                    backgroundColor:Colors.blue,
                    padding: const EdgeInsets.symmetric(horizontal: 15)),

                icon: const Icon(Icons.arrow_back),
                color: Colors.white,
              ),
              const CommonText(text: " Feedback",size: 18,fontWeight: FontWeight.bold,),
              const CommonText(text: " ",size: 22,),

            ],
          ),
              const SizedBox(
                height: 15,
              ),
              const CommonText(text: '''Your feedback can help everyone see more
              accurate weather condition'''),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        maxRadius: 45,
                        backgroundColor: Colors.indigo.shade900,
                        child: Image.asset(
                          "assets/images/rain-3311753-2754887 1.png",
                          height: 55,
                          width: 55,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const CommonText(text: "Cloudy")
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        maxRadius: 50,
                        backgroundColor: Colors.indigo.shade900,
                        child: Image.asset(
                          "assets/images/download 1.png",
                          height: 60,
                          width: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const CommonText(text: "Sunny")
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        maxRadius: 50,
                        backgroundColor: Colors.indigo.shade900,
                        child: Image.asset(
                          "assets/images/cloudy-weather-3311758-2754892 2.png",
                          height: 60,
                          width: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const CommonText(text: "Thunder")
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        maxRadius: 50,
                        backgroundColor: Colors.indigo.shade900,
                        child: Image.asset(
                          "assets/images/download 1.png",
                          height: 60,
                          width: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const CommonText(text: "Storm")
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        maxRadius: 45,
                        backgroundColor: Colors.indigo.shade900,
                        child: Image.asset(
                          "assets/images/rain-3311753-2754887 1.png",
                          height: 55,
                          width: 55,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const CommonText(text: "Rain")
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        maxRadius: 50,
                        backgroundColor: Colors.indigo.shade900,
                        child: Image.asset(
                          "assets/images/rainy-weather-4034172-3337336@0 2.png",
                          height: 60,
                          width: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const CommonText(text: "Snow")
                    ],
                  ),
                ],
              ),
            const SizedBox(height: 200,),
               SizedBox(
                 height: MediaQuery.sizeOf(context).height * .08,
                 width: MediaQuery.sizeOf(context).width,
                child:  ElevatedButton(
                   onPressed: () {},
                   style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.blue,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(25),
                       side: const BorderSide(color: Colors.grey, width: 1),
                     ),
                   ),
                   child: const CommonText(
                     text: 'Submit',size: 20,fontWeight: FontWeight.bold,
                   ),
                 ),
               ),

            ],
          ),
        ),
      ),
    );
  }
}
