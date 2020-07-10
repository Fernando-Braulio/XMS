import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xms/repository/student_repository.dart';
import 'package:xms/date/student_date.dart';
import 'package:http/http.dart' as http;
import 'package:xms/controller/student_controller.dart';

class ListStudent extends StatelessWidget {
  final StudentRepository studentRepository = StudentRepository(
      apiStudent: ListStudentDate(httpStudant: http.Client()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lista Alunos")),
      body: Container(
        child: GetX<StudentController>(
          init: StudentController(studentRepository: studentRepository),
          initState: (state) {
            Get.find<StudentController>().getAll();
          },
          builder: (_) {
            return _.postStudent.length < 1
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : ListView.builder(
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(_.postStudent[index].name),
                      );
                    },
//                    itemCount: _.postStudent.length,
                    itemCount: 6,
                  );
          },
        ),
      ),
    );
  }
}
