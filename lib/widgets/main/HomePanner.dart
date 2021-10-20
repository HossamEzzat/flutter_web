import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:web_test/Constants.dart';
import 'package:web_test/widgets/responsive.dart';

class HomePanner extends StatelessWidget {
  const HomePanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.6,
      child: Stack(
        fit: StackFit.expand,
        children: [
        Image.asset("images/back.jpg", fit: BoxFit.cover,),
      Container(
        color: DarkColor.withOpacity(0.10),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
         Text("Build great future\n for All Of us",
            style: responsive.isDesktop(context) ? Theme
                .of(context)
                .textTheme
                .headline3!
                .copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)
                : Theme
                .of(context)
                .textTheme
                .headline5!
                .copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)
        ),
        SizedBox(height: 20,),
        ElevatedButton(onPressed: () {

        }, child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text("Contact us"),
        ))
        ],
      ),
    ),

    ]
    ,
    )
    ,
    );
  }
}
