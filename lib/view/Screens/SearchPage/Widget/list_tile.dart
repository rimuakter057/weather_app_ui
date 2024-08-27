import 'package:flutter/material.dart';
import 'package:weather_qpp_ui/view/Widget/common_text.dart';

class ListTileWidget extends StatelessWidget {

  const ListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(

      tileColor: Colors.indigo.shade200,
      title: const CommonText(
        text: 'Surat',
        size: 20,
        fontWeight: FontWeight.bold,
      ),
      subtitle:  const CommonText(
        text: 'Cloudy',
        size: 20,

      ),
      trailing: Image.asset(
        "assets/images/rain-3311753-2754887 1.png",

      ),
    );
  }
}
