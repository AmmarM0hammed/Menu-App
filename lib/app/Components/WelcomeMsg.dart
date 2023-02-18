import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:menu/app/Function/Config.dart';

class WelcomeMsg extends StatelessWidget {
  const WelcomeMsg({super.key});
 

  String getTime(){
    TimeOfDay day = TimeOfDay.now();
    if(day.period == DayPeriod.am)
      // ignore: curly_braces_in_flow_control_structures
      return "صباح الخير";
    else
      // ignore: curly_braces_in_flow_control_structures
      return "مساء الخير";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
           getTime() ,
           style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 23,
              fontWeight: FontWeight.bold
           )
          ),
          SizedBox(height: 10),
           Text(
           ConfigApp.welcomeMsg,
           style: const TextStyle(
              color: Colors.black,
              fontSize: 23,
              fontWeight: FontWeight.bold
           )
          ),

        ],
      ),
    );
  }
}
