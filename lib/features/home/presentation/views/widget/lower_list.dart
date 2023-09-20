import 'package:flutter/cupertino.dart';

import 'lower_item.dart';

class LowerList extends StatelessWidget {
  const LowerList({super.key});

  @override
  Widget build(BuildContext context) {

    return ListView .separated(
shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (index,context)=>LowerItem(),
    itemCount: 10, separatorBuilder: (BuildContext context, int index) =>SizedBox(height: 15,),
    );
  }
}
