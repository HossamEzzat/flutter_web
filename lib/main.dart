import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_test/Constants.dart';
import 'package:web_test/screen/HomeScreen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HOSSAM_EZAT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: KprimaryColor,
        scaffoldBackgroundColor:DarkColor,
        canvasColor: DarkColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
          bodyText1: TextStyle(color: KbpdyTextColor),
          bodyText2: TextStyle(color: KbpdyTextColor),


        ),


      ),
      home:HomeScreen(),
    );
  }
}

