import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Sample App"),
        backgroundColor: Colors.blue,
      ),
      body: const Text(
        'This is a paragraph This is my first flutter project and it is my first project This is project',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
          // fontWeight:FontWeight.w300,
          //letterSpacing: 2,
          // wordSpacing: 2,
          // color: Colors.purple,

          // foreground: Paint()
          //   ..color = Colors.purple
          //   ..strokeWidth = 3.0
          //   ..style = PaintingStyle.stroke,

          // background: Paint()
          //   ..color = Colors.green
          //   ..strokeWidth = 3.0
          //   ..style = PaintingStyle.stroke,

          // backgroundColor: Colors.yellow,

          // fontStyle: FontStyle.italic
          //decoration: TextDecoration.combine([TextDecoration.overlain, TextDecoration.underline,]),
          decorationColor: Colors.blue,
          //decorationStyle:TextDecorationStyle.dashed,
          shadows: [
            Shadow(color: Colors.grey,blurRadius: 4.0,offset: Offset(2, 4))
          ]),
      ),
    ),
  ));
}
