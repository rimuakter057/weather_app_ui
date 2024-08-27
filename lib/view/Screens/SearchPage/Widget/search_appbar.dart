import 'package:flutter/material.dart';

import '../../../Widget/common_text.dart';
class SearchAppBar extends StatelessWidget {
  const SearchAppBar({super.key});

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
        const CommonText(text: " ",size: 20,),

      ],
    );
  }
}
