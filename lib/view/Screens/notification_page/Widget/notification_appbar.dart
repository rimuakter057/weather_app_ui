import 'package:flutter/material.dart';

import '../../../Widget/common_text.dart';
class NoteAppBar extends StatelessWidget {
  const NoteAppBar({super.key});

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

          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
        ),
        const CommonText(text: " 7 Days",size: 20,fontWeight: FontWeight.bold,),
        const CommonText(text: " ",size: 18,fontWeight: FontWeight.bold,),

      ],
    );
  }
}
