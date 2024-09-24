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
      home: const MyHomePage(title: 'Flutter Demo '),
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
      body: Container(
          height: 100,
          color: Colors.blue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text('R1', style: TextStyle(fontSize: 30)),
              Column(
                children: [
                  OutlinedButton(
                    onPressed: () {
                      print('hello world');
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: const Text('log in'),
                  ),
                  OutlinedButton(

                    onPressed: () {
                      print('hello world');
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    child: const Text('log in'),
                  )
                ],
              ),
              const Text('R2', style: TextStyle(fontSize: 30)),
              const Text('R3', style: TextStyle(fontSize: 30)),
              const Text('R4', style: TextStyle(fontSize: 30)),
              OutlinedButton(
                onPressed: () {
                  print('hello world');
                },
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                child: const Text('log in'),
              )
            ],
          )),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
