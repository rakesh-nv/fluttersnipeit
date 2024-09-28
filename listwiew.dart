import 'package:flutter/material.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'one',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'two',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'three',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'four',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'five',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 21),
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
