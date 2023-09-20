import 'package:go_router/go_router.dart';
import 'package:iti_final_project/features/home/presentation/views/home_view.dart';

import 'package:iti_final_project/features/login/presentation/views/login_view.dart';
import 'package:iti_final_project/features/sign_up/presentation/views/sign_up_view.dart';
import 'package:iti_final_project/features/task/presentation/views/task_view.dart';

import '../../features/welcome/presentation/views/welcome_view.dart';

abstract class AppRouter {
  static const kLoginView="/loginView";
  static const kSignUpView="/signUpView";
  static const kHomeView="/homeView";
  static const kTaskView="/taskView";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const WelcomeView(),
      ),
      GoRoute(
        path: kLoginView,
        builder: (context, state) => const LoginView(),
      ),

      GoRoute(
        path: kSignUpView,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kTaskView,
        builder: (context, state) => const TaskView(),
      ),
    ],
  );
}
