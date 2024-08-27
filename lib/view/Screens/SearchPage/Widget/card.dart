import 'package:flutter/material.dart';

import '../../../Widget/common_text.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({super.key});

  @override
  Widget build(BuildContext context) {
   return Card(
      color: Colors.blue,

      child: SizedBox(
          height: MediaQuery.sizeOf(context).height*.15,
          width: MediaQuery.sizeOf(context).width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(children: [
              const SizedBox(height: 3,),
            const Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText(text: "Surat",fontWeight: FontWeight.bold,size: 20,),
                    CommonText(text: "Cloudy"),
                  ],
                ),
            const Spacer(),
              Image.asset(
                "assets/images/cloudy-weather-3311758-2754892 2.png",
                height: MediaQuery.sizeOf(context).height*.1,
                width: MediaQuery.sizeOf(context).width*.3,
                fit: BoxFit.fill,
              ),

            ],),
          )
      ),
    );
  }
}
