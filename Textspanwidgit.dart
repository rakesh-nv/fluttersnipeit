import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        appBar: AppBar(
          title: const Text('Sample App'),
          backgroundColor: Colors.blue,
        ),
        body: const Column(
          children: [
            DefaultTextStyle(
                style: TextStyle(fontSize: 50, color: Colors.red),
                child: Column(
                  children: [
                    Text('First',style: TextStyle(color: Colors.blue),),
                    Text('Second', style: TextStyle(color: Colors.green),),
                    Text('Third',style: TextStyle(color: Colors.orange),),
                    Text('Fourth',style:TextStyle(color: Colors.purple),)
                  ],
                ))
          ],
        )),
  ));
}
