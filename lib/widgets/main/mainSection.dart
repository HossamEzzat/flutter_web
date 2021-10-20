import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:web_test/Models/Projects.dart';
import 'package:web_test/widgets/main/projects_info.dart';
import 'package:web_test/widgets/main/recommmendation_info.dart';

import 'HomePanner.dart';
import 'IconInfo.dart';

class mainSection extends StatelessWidget {
  const mainSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child:Column(
        children: [
          HomePanner(),
          IconInfo(),
          projects_info(),
          recommendation_info(),
        ],
      ) ,


    );
  }
}
