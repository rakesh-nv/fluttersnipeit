import 'package:flutter/material.dart';
import 'package:rakesh1/widgits/rounde_btn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter001',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Demo',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          height: 50,
          child: ElevatedButton(
            style:ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(8)
            )
            ),
            onPressed: () {},
            child: Text("login",style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}
