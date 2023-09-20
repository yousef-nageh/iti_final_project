import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iti_final_project/core/utils/color_manager.dart';
import 'package:iti_final_project/core/utils/icon_broken.dart';
import 'package:iti_final_project/features/home/presentation/manager/block/app_cubit.dart';

import '../../../../core/utils/app_icons.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    AppCubit cubit = BlocProvider.of<AppCubit>(context);
    return BlocBuilder<AppCubit, AppStates>(
      builder: (BuildContext context, state) => Scaffold(
        bottomNavigationBar: BottomNavigationBar(

          currentIndex: cubit.currentIndex,
          onTap: (int index) {
            cubit.onTap(index,context);
          },
          items:  [
            const BottomNavigationBarItem(icon: Icon(IconBroken.Home), label: "Home"),
            const BottomNavigationBarItem(icon: Icon(IconBroken.Chat), label: "Chat"),
            BottomNavigationBarItem(icon: Container(
              color: ColorManager.secondaryColor,
                height:50 ,
                width:50,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: SvgPicture.asset(AppIcons.addSquare,height: 24,width: 24,color: ColorManager.blackColor,),
                )), label: ""),
            const BottomNavigationBarItem(
                icon: Icon(IconBroken.Calendar), label: "Calendar"),
            const BottomNavigationBarItem(
                icon: Icon(IconBroken.Notification), label: "Notification"),
          ],

        ),body: cubit.screen[cubit.currentIndex],
      ),
    );
  }
}
