import 'package:flutter/cupertino.dart';
import 'package:iti_final_project/constance.dart';

import 'upper_item.dart';

class UpperList extends StatelessWidget {
  const UpperList({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 175,

      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: kPadding),
        itemBuilder: (BuildContext context, int index) =>UpperItem(),
        separatorBuilder: (_,___) =>SizedBox(width: 7,),
         itemCount: 10,),
    );
  }
}
