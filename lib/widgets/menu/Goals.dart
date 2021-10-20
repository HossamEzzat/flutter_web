import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Goals extends StatelessWidget {
  const Goals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Text("Goals",style: Theme.of(context).textTheme.subtitle2,),
          ),
        ),
        buildGoals("Planning Stage"),
        buildGoals("Development Stage"),
        buildGoals("New Way to living"),
        buildGoals("Execution Phase"),





      ],
    );
  }

  Padding buildGoals(String txt){
    return    Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Padding(
        padding: const EdgeInsets.only(right: 8,bottom: 2,top: 8,left: 8),
        child: Row(
          children: [
            SvgPicture.asset("icons/check.svg"),
            SizedBox(width: 10,),
            Text("$txt",style:TextStyle(fontSize: 14,fontWeight:FontWeight.bold),),



          ],
        ),
      ),
    );

  }
}
