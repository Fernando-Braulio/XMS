import 'package:get/get.dart';
import 'package:xms/widgets/list_student.dart';
import 'package:xms/widgets/login_screen.dart';
// import 'package:xms/widgets/testlist.dart';

class Routes {

  static final routes = [
    GetPage(name: '/student', page:()=> ListStudent(),),
    // GetPage(name: '/student', page:()=> ListTitle(),),
    GetPage(name: '/login', page:()=> LoginScreen()),
  ];
}