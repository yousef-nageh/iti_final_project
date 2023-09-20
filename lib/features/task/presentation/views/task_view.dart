import 'package:flutter/material.dart';
import 'package:iti_final_project/core/utils/color_manager.dart';
import 'package:iti_final_project/core/widget/my_button.dart';
import 'package:iti_final_project/features/task/presentation/views/widget/task_view_body.dart';

class TaskView extends StatelessWidget {
  const TaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(height: 100,
      color: ColorManager.buttonNColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 55,vertical: 20),
          child: MyButton(onPressed: () {  }, text: 'Add Task',height: 57,),
        ),
      ),
      body: const TaskViewBody(),
    );
  }
}
