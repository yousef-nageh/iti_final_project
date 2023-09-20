import 'package:flutter/cupertino.dart';

import 'lower_item.dart';

class LowerList extends StatelessWidget {
  const LowerList({super.key});

  @override
  Widget build(BuildContext context) {

    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) =>LowerItem(),
      separatorBuilder: (BuildContext context, int index) =>SizedBox(height: 12,),
       itemCount: 6,);
  }
}
