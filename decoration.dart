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
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text(widget.title),
      ),

      body: Container(
        // color: Colors.blue.shade50,
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Container(
              width: 150,
              height: 150,
              // color: Colors.blueGrey,
              decoration: BoxDecoration(color: Colors.blueGrey,
                // borderRadius: BorderRadius.circular(18),
                border: Border.all(
                    width: 4,
                    color: Colors.black
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 40,
                    spreadRadius: 21,

                  ),
                ],
                shape: BoxShape.circle
              ),
            ),
          )), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
