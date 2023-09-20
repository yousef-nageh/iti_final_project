import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_style.dart';
import '../../../../../core/utils/color_manager.dart';
import '../../../../../core/utils/image_manager.dart';

class LowerItem extends StatelessWidget {
  const LowerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 125,
      width: double.infinity,
      color:ColorManager.whiteGrey ,
      child: Padding(
        padding: const EdgeInsets.only(top: 9,bottom: 10,left: 10,right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              maxLines: 1,
              overflow:TextOverflow.ellipsis ,
              "Mobile App Wireframe ",style: AppStyle.textStyle21,),
            SizedBox(height: 7,),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Team members",style: AppStyle.textStyle14,),
                      Padding(
                        padding: const EdgeInsets.only(top: 6,bottom: 11),
                        child: Row(children: [
                          ...List.generate(
                            3,
                                (index) => CircleAvatar(
                              radius: 10,
                              backgroundImage:
                              AssetImage(ImageManager.testImage),
                            ),
                          )
                        ],),
                      ),
                      Text("Due on : 20 June",style: AppStyle.textStyle14,)
                    ],
                  ),
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset(ImageManager.circelImage,height:59 ,width:59 ,color: ColorManager.secondaryColor,),
                    Text("100%",style: AppStyle.textStyle11.copyWith(fontWeight: FontWeight.bold),)
                  ],
                )
              ],
            )

          ],),
      ),
    );
  }
}
