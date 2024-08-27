import 'package:flutter/material.dart';

import 'Widget/card.dart';
import 'Widget/notification_appbar.dart';
import 'Widget/option_day.dart';


class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade900,
       body: const SingleChildScrollView(
         child: Padding(
           padding: EdgeInsets.all(20.0),
           child: Column(children: [
             SizedBox(height: 20,),
             NoteAppBar(),
             SizedBox(height: 30,),
             NoteCard(),
             SizedBox(height: 20,),
             OptionDay(),
           ],),
         ),
       ),
    );
  }
}
