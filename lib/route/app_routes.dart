import 'package:get/get.dart';
import 'package:xms/widgets/list_student.dart';
import 'package:xms/widgets/login_screen.dart';

class Routes {

  static final routes = [
    GetPage(name: '/student', page:()=> ListStudent(),),
    GetPage(name: '/login', page:()=> LoginScreen()),
  ];
}