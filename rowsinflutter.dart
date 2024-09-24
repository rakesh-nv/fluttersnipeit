import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(title: 'Flutter Demo home page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter'),
        backgroundColor: Colors.blue,
      ),
      body:Container(
        color: Colors.black12,

        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceAround , //row
          // crossAxisAlignment: CrossAxisAlignment.center, //column
          children: [
            const Text('A', style: TextStyle(fontSize: 30),),
            const Text('B', style: TextStyle(fontSize: 30),),
            const Text('C', style: TextStyle(fontSize: 30),),
            const Text('D', style: TextStyle(fontSize: 30),),
            const Text('E', style: TextStyle(fontSize: 30),),
            ElevatedButton(
              onPressed: () {
                print('hello world');
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue
              ),

              child: const Text('click me'),
            )

          ],
        ),
      ),
    );
  }
}
