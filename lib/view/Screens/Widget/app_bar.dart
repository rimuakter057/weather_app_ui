import 'package:flutter/material.dart';
import 'package:weather_qpp_ui/view/Widget/common_text.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
                backgroundColor:Colors.indigo.shade900,
                padding: const EdgeInsets.symmetric(horizontal: 15)),

            icon: const Icon(
              Icons.grid_view,
              color: Colors.white,
            )),
        const CommonText(text: "Surat",size: 20,),
        IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
                backgroundColor:Colors.indigo.shade900,
                padding: const EdgeInsets.symmetric(horizontal: 15)),

            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
            )),

      ],
    );
  }
}
