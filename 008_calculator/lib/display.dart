import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  Display({Key key, this.value, this.height}) : super(key: key);

  final String value;
  final double height;

  String get _output => value.toString();
  double get _margin => height / 4;

  final LinearGradient _gradient =
      const LinearGradient(colors: [Colors.white, Colors.white]);

  @override
  Widget build(BuildContext context) {
    TextStyle style = Theme.of(context).textTheme.display3.copyWith(
        color: Colors.black87, fontWeight: FontWeight.w300, fontSize: 72);

    return Container(
        padding: EdgeInsets.only(top: _margin, bottom: _margin),
        constraints: BoxConstraints.expand(height: height),
        child: Container(
          padding: EdgeInsets.fromLTRB(32, 32, 32, 32),
          constraints: BoxConstraints.expand(height: height - (_margin)),
          decoration: BoxDecoration(gradient: _gradient),
          child: Text(_output, style: style, textAlign: TextAlign.right),
        ));
  }
}
