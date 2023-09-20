import 'package:go_router/go_router.dart';

void goTo(context,String path){
  GoRouter.of(context).push(path);
}
