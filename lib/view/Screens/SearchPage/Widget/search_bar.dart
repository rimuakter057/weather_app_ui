import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .07,
      width: MediaQuery.sizeOf(context).width*.7,
      decoration: BoxDecoration(
        color: Colors.lightBlue.shade700,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Row(
          children: [
            Icon(
              Icons.search,
              color: Colors.grey,
              size: 25,
            ),
            SizedBox(
              width: 10,
            ),
           Flexible(
               flex: 4,
               child: Center(
                 child: TextField(
                   decoration: InputDecoration(
                     hintText: "search",
                     hintStyle: TextStyle(color: Colors.white54),
                     border: InputBorder.none
                   ),
                 ),
               ))
          ],
        ),
      ),
    );
  }
}
