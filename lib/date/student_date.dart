import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:xms/model/student.dart';

const baseUrl = 'http://localhost:3333/student';

class ListStudentDate {
  final http.Client httpStudant;
  ListStudentDate({@required this.httpStudant});

  getAll() async {
    print(await httpStudant.get(baseUrl));
    try {
      var response = await httpStudant.get(baseUrl);
      print(response.statusCode);
      if(response.statusCode == 200){
        Iterable jsonResponse = json.decode(response.body);
        List<StudentModel> listStudent = jsonResponse.map((model) => StudentModel.fromJson(model)).toList();
        print(listStudent);
        return listStudent;
      }else print ('erro');
    } catch(_){
      print('catch');
    }
  }
}
