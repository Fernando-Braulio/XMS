import 'package:flutter/material.dart';

Widget cardStudent(BuildContext context, int index, _postStudent) {
  // final trip = tripsList[index];
  return new Container(
    child: Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 1.0),
              child: Row(
                children: <Widget>[
                  Text(
                    _postStudent[index].name,
                    style: new TextStyle(fontSize: 18.0),
                  ),
                  Spacer(),
                  Icon(Icons.extension),
                  Icon(Icons.notifications),
                  Icon(Icons.more_vert),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0, bottom: 1.0),
              child: Row(children: <Widget>[
                Text(
                  _postStudent[index].turma,
                  style: TextStyle(color: Colors.grey[500]),
                ),
                Spacer(),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0, bottom: 8.0),
              child: Row(children: <Widget>[
                Text(
                  'Conclusão do Jogo ${_postStudent[index].game}%',
                  style: TextStyle(color: Colors.grey[500]),
                ),
                Spacer(),
              ]),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "EXPANDIR",
                    style: new TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.blue),
                  ),
                  Spacer(),
                  Icon(Icons.send),
                  Icon(Icons.send),
                  Icon(Icons.send),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
