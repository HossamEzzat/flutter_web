import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:web_test/Constants.dart';
import 'package:web_test/Models/Recommendtions.dart';

class recommendation_info extends StatelessWidget {
  const recommendation_info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Client Recommendations',
            style: Theme.of(context).textTheme.headline5,
          ),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(demoRecommendtionss.length, (index) => Padding(padding:  EdgeInsets.only(right: 20),
                child: RecommendationCard(

                  reco: demoRecommendtionss[index],),


              )),
            ),
          ),
        ],
      ),
    );
  }
}

 class RecommendationCard extends StatelessWidget {

final Recommendtions reco;

RecommendationCard({required this.reco});

  @override
  Widget build(BuildContext context) {
    return Container(
width: 300,
      height: 200,
      padding: EdgeInsets.all(20),
      color: KsecondColor,
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           ListTile(
             leading: CircleAvatar(
               radius: 30,
               backgroundImage: AssetImage(reco.image!),
             ),
             title: Text(reco.name!,style: Theme.of(context).textTheme.subtitle2,),
             subtitle: Text(reco.source!,style: Theme.of(context).textTheme.bodyText2,),
           ),
           SizedBox(height: 10,),
           Text(reco.text!,style: TextStyle(height: 1.5),overflow: TextOverflow.ellipsis,maxLines: 4,),
         ],
       ),
    );
  }
}


