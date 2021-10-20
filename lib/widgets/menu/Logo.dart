import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Constants.dart';
class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: KsecondColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(flex: 2,),
            Image(image: AssetImage("images/building.png"),
              color: Colors.white,
              width: 100,

            ),
            Spacer(),
            Text(
              "Real Estate",style: Theme.of(context).textTheme.subtitle2,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Modern home with \n great interior design ",
                  textAlign: TextAlign.center,

                  style:TextStyle(
                    height: 1.5,
                fontWeight: FontWeight.w200,
              )),
            ),

          ],
        ),


      ),
    );
  }
}
