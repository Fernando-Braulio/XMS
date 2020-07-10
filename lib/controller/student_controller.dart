import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xms/model/student.dart';
import 'package:xms/repository/student_repository.dart';
import 'package:xms/date/student_date.dart';

class StudentController extends GetxController {
  final StudentRepository studentRepository;

  StudentController({@required this.studentRepository})
      : assert(studentRepository != null);

  final _postsStudent = List<StudentModel>().obs;
  get postStudent => this._postsStudent.value;
  set postStudent(value) => this._postsStudent.value = value;

  getAll() {
    studentRepository.getAll().then((data) {
      this.postStudent = data;
    });
  }
}
