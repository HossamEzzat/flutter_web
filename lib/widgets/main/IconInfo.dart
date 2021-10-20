import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:web_test/Constants.dart';
class IconInfo extends StatelessWidget {
  const IconInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(60.0),
      child: Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
buildIconinfo(context: context, iconData: Icons.supervisor_account_sharp, txt: '+69', label:'Clients' ),
buildIconinfo(context: context, iconData: Icons.location_on, txt: '+139', label:'Projects' ),
buildIconinfo(context: context, iconData: Icons.public_outlined, txt: '+30', label:'Countries' ),
buildIconinfo(context: context, iconData: Icons.star, txt: '+13K', label:'Stars' ),
        ],
      ),
    );
  }

     Column buildIconinfo(
         {required BuildContext context, required IconData iconData, required String txt, required String label}){
    return Column(
      children: [
        Icon(
          iconData,
          size: 50,
        ),
        SizedBox(height: 20,),
        Text("$txt",style: Theme.of(context).textTheme.headline6!.copyWith(
          color: KprimaryColor,fontSize: 30,
        ),),
        Text("$label",style: Theme.of(context).textTheme.subtitle2,),
      ],
    );
     }
}
