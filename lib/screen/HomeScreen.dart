import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:web_test/widgets/main/mainSection.dart';
import 'package:web_test/widgets/menu/SideMenuSection.dart';
import 'package:web_test/widgets/responsive.dart';

import '../Constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: responsive.isDesktop(context)?null:AppBar(
        backgroundColor: KBGColor,
        leading: Builder(
          builder: (context)=>IconButton(
              onPressed:  (){
                Scaffold.of(context).openDrawer();

              }     , icon: Icon(Icons.menu_outlined)),
        ),
      ),

drawer: SideMenuSection(),
      body: SafeArea(

        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 1440.0),
            child: Row(
              children: [
                if(responsive.isDesktop(context))
                Expanded(
                    flex: 2,
                    child: Container(
                      child: SideMenuSection(),
                      color: Colors.white,)),
                Expanded(
                  flex: 7,
                    child: mainSection(),
                )],
            ),
          ),
        ),
      ),
    );
  }
}
