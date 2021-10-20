import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:web_test/Constants.dart';
import 'package:web_test/Models/Projects.dart';
import 'package:web_test/widgets/responsive.dart';

class projects_info extends StatelessWidget {
  const projects_info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Our Projects',
            style: Theme
                .of(context)
                .textTheme
                .headline5,
          ),
          GridView.builder(
              shrinkWrap: true,
              itemCount: demoProjects.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:responsive.isDesktop(context)?3:2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemBuilder: (context, value)=> projectcard(pro: demoProjects[value]))
        ],
      ),
    );
  }
}

class projectcard extends StatelessWidget {
  final Projects pro;

  projectcard({required this.pro});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      color: KsecondColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            pro.image,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 20,),
          Text(
            pro.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme
                .of(context)
                .textTheme
                .subtitle2,
          ),
          SizedBox(height: 10,),
          Expanded(
            child: Text(
             pro.description,
              style: TextStyle(height: 1.5),

            ),
          ),
          SizedBox(height: 5,),
          TextButton(
              onPressed: () {

              }, child:  Text("More inf >>",style: TextStyle(color: KprimaryColor),)    ),
        ],
      ),
    );
  }
}

