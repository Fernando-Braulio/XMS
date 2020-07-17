import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xms/controller/student_controller.dart';
import 'package:xms/widgets/Student/card_student.dart';
import 'package:xms/widgets/Dropdown/dropdown_menu.dart';
import 'package:xms/widgets/Student/filter_widget.dart';
import 'package:xms/repository/student_repository.dart';
import 'package:xms/date/student_date.dart';
import 'package:http/http.dart' as http;

class ListStudent extends StatefulWidget {
  ListStudent({Key key}) : super(key: key);

  @override
  _ListStudentState createState() => _ListStudentState();
}

class _ListStudentState extends State<ListStudent> {
  final StudentRepository studentRepository = StudentRepository(
      apiStudent: ListStudentDate(httpStudant: http.Client()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text("Alunos"),
          backgroundColor: Color(0xFFEF6C00),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ]),
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Positioned(
                top: 2,
                left: 2,
                right: 2,
                child: Card(
                  child: TextField(
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 15),
                        suffixIcon: IconButton(
                            icon: Icon(Icons.close),
                            color: Colors.grey[700],
                            onPressed: () {})),
                    onSubmitted: (text) {},
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 15.0),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  height: 30.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      FilterWidget('Sem Filtro', true, 100.0),
                      FilterWidget('Conceito Vermelho', false, 180.0),
                      FilterWidget('Tarefa Pendente', false, 150.0),
                      FilterWidget('Baixo Engajamento', false, 180.0),
                    ],
                  ),
                ),
              ),
              Text("Selecione as turmas",
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0)),
              SizedBox(height: 2),
              Padding(
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 15.0),
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  height: 30.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      FilterWidget('Todas', false, 80.0),
                      FilterWidget('2º B', true, 80.0),
                      FilterWidget('2º C', false, 80.0),
                      FilterWidget('1º A', false, 80.0),
                      FilterWidget('2º A', false, 80.0),
                      FilterWidget('1º C', false, 80.0),
                    ],
                  ),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Center(
                    child: Row(
                      children: <Widget>[
                        Text("Ordenar por"),
                        PopupMenuButton<String>(
                          icon: Icon(Icons.arrow_drop_down),
                          onSelected: choiceAction,
                          itemBuilder: (BuildContext context) {
                            return Constants.choices.map((String choice) {
                              return PopupMenuItem<String>(
                                value: choice,
                                child: Text(choice),
                              );
                            }).toList();
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                child: Flexible(
                  child: GetX<StudentController>(
                    init:
                        StudentController(studentRepository: studentRepository),
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
                                return Container(
                                    padding: EdgeInsets.all(2.0),
                                    child: cardStudent(
                                        context, index, _.postStudent));
                              },
                              itemCount: _.postStudent.length,
                            );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
