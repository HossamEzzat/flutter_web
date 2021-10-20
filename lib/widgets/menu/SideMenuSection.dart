import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:web_test/Constants.dart';
import 'package:web_test/widgets/menu/ContactInfo.dart';
import 'package:web_test/widgets/menu/Goals.dart';
import 'package:web_test/widgets/menu/Logo.dart';
class SideMenuSection extends StatelessWidget {
  const SideMenuSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Logo(),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: [
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: ContactInfo(),
             ),
                  Divider(),
                  Goals(),
                  Divider(),
                  SizedBox(height: 10,),
                  TextButton(onPressed: (){

                  }, child: FittedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,bottom: 5,right: 5),
                      child: Row(

                        children: [

                          SvgPicture.asset("icons/download.svg"),
                          SizedBox(width: 10,),
                          Text("Download Brochure",style:TextStyle(color: Theme.of(context).textTheme.bodyText1!.color)),
                        ],
                      ),
                    ),
                  )),
               Container(
                 margin: EdgeInsets.only(top: 40,),
                  color: KsecondColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(onPressed: (){

                      }, icon: SvgPicture.asset("icons/twitter.svg")),
                      IconButton(onPressed: (){

                      }, icon: SvgPicture.asset("icons/linkedin.svg")),
                      IconButton(onPressed: (){

                      }, icon: SvgPicture.asset("icons/github.svg")),
                      IconButton(onPressed: (){

                      }, icon: SvgPicture.asset("icons/dribble.svg")),
                    ],
                  ) ,
               ),




                ],
              ),
            ),

            )
          ],
        ),
      ),
    );
  }
}
