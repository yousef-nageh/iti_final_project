import 'package:flutter/material.dart';

import 'upper_item.dart';

class UpperList extends StatelessWidget {
  const UpperList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated (
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) =>UpperItem(),
      separatorBuilder: (BuildContext context, int index) =>SizedBox(height: 23,),
      itemCount: 4,);
  }
}
