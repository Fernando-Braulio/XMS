import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:xms/repository/student_repository.dart';
// import 'package:xms/date/student_date.dart';
// import 'package:http/http.dart' as http;
// import 'package:xms/controller/student_controller.dart';
// import 'package:xms/widgets/testlist.dart';

class ListStudent extends StatefulWidget {
  @override
  _ListStudentState createState() => _ListStudentState();
}

class _ListStudentState extends State<ListStudent> {
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
                    // autofocus: true,
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
                padding: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 15.0),
                child: Row(
                  children: <Widget>[
                    Text("Sem Filtro"),
                    Text("Conceito Vermelho"),
                    Text("Tarefa Pendente"),
                    // Text("Baixo Engajamento"),
                  ],
                ),
              ),
              Text("Selecione as turmas",
                  style:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0)),
              SizedBox(height: 5),
              Row(
                children: <Widget>[
                  Text("Sem Filtro"),
                  Text("Conceito Vermelho"),
                  Text("Tarefa Pendente"),
                  // Text("Baixo Engajamento"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// class ListStudent extends StatelessWidget {
//   final StudentRepository studentRepository = StudentRepository(
//       apiStudent: ListStudentDate(httpStudant: http.Client()));

//   @override
//   Widget build(BuildContext context) {
//     return
//   body: Container(
//   child: Card(
//     child: Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: Column(
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.only(top: 8.0, bottom: 4.0),
//             child: Row(children: <Widget>[
//               Text("AAA", style: new TextStyle(fontSize: 30.0),),
//               Spacer(),
//             ]),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 4.0, bottom: 80.0),
//             child: Row(children: <Widget>[
//               Text(
//                   "OI"),
//               Spacer(),
//             ]),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
//             child: Row(
//               children: <Widget>[
//                 Text("OIIIIII", style: new TextStyle(fontSize: 35.0),),
//                 Spacer(),
//                 Icon(Icons.directions_car),
//               ],
//             ),
//           )
//         ],
//       ),
//     ),
//   ),
// ),
//       body: Container(
//         child: GetX<StudentController>(
//           init: StudentController(studentRepository: studentRepository),
//           initState: (state) {
//             Get.find<StudentController>().getAll();
//           },
//           builder: (_) {
//             return _.postStudent.length < 1
//                 ? Center(
//                     child: CircularProgressIndicator(),
//                   )
//                 : ListView.builder(
//                     itemBuilder: (context, index) {
//                       return Container(
//                           padding: EdgeInsets.all(2.0), child: _buildCard());

//                       // ListTile(
//                       //   title: Text(_.postStudent[index].name),
//                       // );
//                     },
//                     itemCount: _.postStudent.length,
// //                    itemCount: 6,
//                   );
//           },
//         ),
//       ),
//     );
//   }
// }

// Widget _buildCard() => SizedBox(
//       // height: 150,
//       child: Card(
//         child: Column(
//           // crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Row(
//               children: <Widget>[
//                 Column(
//                   children: <Widget>[
//                     Text("Maria José"),
//                     Text("Turma 2º B"),
//                     Text("Conclusão do Jogo"),
//                   ],
//                 ),
//                 Column(
//                   children: <Widget>[
//                     Row(
//                       children: <Widget>[
//                         IconButton(
//                             icon: Icon(Icons.extension), onPressed: () {}),
//                         IconButton(
//                             icon: Icon(Icons.notifications), onPressed: () {}),
//                         IconButton(
//                             icon: Icon(Icons.more_vert), onPressed: () {}),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             Divider(),
//             ExpansionTile(
//               title: Text(
//                 "EXPANDIR",
//                 style: TextStyle(
//                     fontSize: 14.0,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.blue),
//               ),
//               children: <Widget>[
//                 ListTile(
//                   title: Text('data'),
//                 )
//               ],
//             ),
//             Row(
//               children: <Widget>[
//                 Text("Expandir"),
//                 Column(
//                   children: <Widget>[
//                     Row(
//                       children: <Widget>[
//                         IconButton(icon: Icon(Icons.send), onPressed: () {}),
//                         IconButton(icon: Icon(Icons.send), onPressed: () {}),
//                         IconButton(icon: Icon(Icons.send), onPressed: () {}),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//           // children: [
//           //   ListTile(
//           //     title: Text('1625 Main Street',
//           //         style: TextStyle(fontWeight: FontWeight.w500)),
//           //     subtitle: Text('My City, CA 99984'),
//           //     leading: Icon(
//           //       Icons.restaurant_menu,
//           //       color: Colors.blue[500],
//           //     ),
//           //   ),
//           //   Divider(),
//           //   ListTile(
//           //     title: Text('(408) 555-1212',
//           //         style: TextStyle(fontWeight: FontWeight.w500)),
//           //     leading: Icon(
//           //       Icons.contact_phone,
//           //       color: Colors.blue[500],
//           //     ),
//           //   ),
//           //   ListTile(
//           //     title: Text('costa@example.com'),
//           //     leading: Icon(
//           //       Icons.contact_mail,
//           //       color: Colors.blue[500],
//           //     ),
//           //   ),
//           // ],
//         ),
//       ),
//     );
