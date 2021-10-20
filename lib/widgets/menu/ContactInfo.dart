 import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class ContactInfo extends StatelessWidget {
  const ContactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildInfo("Address :","Zag-Minya El-Qamh",),
        buildInfo("Country : ", "Egypt"),
        buildInfo("Phone :", "01064224826"),
        buildInfo("email : ", "hossam@gmail.com"),
        buildInfo("website : ", "hossam@hoss.com"),
      ]
    );
  }

  Widget buildInfo(String tit,String txt){
return Padding(
  padding: const EdgeInsets.all(6.0),
  child:   Row(

    mainAxisAlignment: MainAxisAlignment.spaceBetween,

    children: [



      Text("$tit",style: TextStyle(color: Colors.white70),),

      Text("$txt",style: TextStyle(color: Colors.white38),),

    ],

  ),
);
  }
}
