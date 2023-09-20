


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iti_final_project/core/utils/app_router.dart';
import 'package:iti_final_project/core/widget/go_to.dart';
import 'package:iti_final_project/features/calendar/presentation/views/calendar_view.dart';
import 'package:iti_final_project/features/chat/presentation/views/chat.dart';
import 'package:iti_final_project/features/home/presentation/views/widget/home_view_body.dart';
import 'package:iti_final_project/features/notification/presentation/views/Notification_view.dart';

import '../../../../task/presentation/views/task_view.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitial());

  int currentIndex=0;
  List<Widget>screen =[

    HomeViewBody(),
    ChatView(),
    TaskView(),
    CalendarView(),
    NotificationView(),
  ];
  void onTap(index,context){
    if(index==2){
      goTo(context, AppRouter.kTaskView);
    }else{
      currentIndex=  index;
      emit(BottomNavigationBarState());
    }




  }
}
