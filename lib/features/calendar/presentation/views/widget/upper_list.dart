
import 'package:flutter/material.dart';

import '../../../../../constance.dart';
import '../../../../../core/utils/app_style.dart';
import '../../../../../core/utils/color_manager.dart';

class UpperList extends StatefulWidget {
  const UpperList({super.key});

  @override
  State<UpperList> createState() => _UpperListState();
}

class _UpperListState extends State<UpperList> {
  int item = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 69,
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: kPadding),
          itemBuilder: (BuildContext context, int index) => InkWell(
            onTap: () {
              setState(() {
                item = index;
              });
              print(item);
            },
            child: Container(
              height: 69,
              width: 45,
              color: item == index
                  ? ColorManager.secondaryColor
                  : ColorManager.buttonNColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    (index + 1).toString(),
                    style: item == index
                        ? AppStyle.textStyle18
                        .copyWith(color: ColorManager.blackColor)
                        : AppStyle.textStyle18,
                  ),
                  Text(
                    "Tue",
                    style: item == index
                        ? AppStyle.textStyle8
                        .copyWith(color: ColorManager.blackColor)
                        : AppStyle.textStyle8,
                  ),
                ],
              ),
            ),
          ),
          separatorBuilder: (BuildContext context, int index) =>
              SizedBox(width: 15),
          itemCount: 10,
        ));
  }
}
