import 'package:flutter/material.dart';

class FilterWidget extends StatelessWidget {
  final String text;
  final bool active;
  final double _width;

  const FilterWidget(this.text, this.active, this._width);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.0),
      child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: active ? Colors.deepOrange[200] : Colors.grey[300],
            border: Border.all(
              color: active ? const Color(0xFFFFAB91) : const Color(0xFFE0E0E0),
              width: 0.0,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          width: _width,
          // color: Colors.blue,
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                10.0, 5.0, 10.0, 5.0), //EdgeInsets.all(5.0),
            child: Text(text),
          )),
    );
  }
}
