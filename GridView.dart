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
        textTheme: const TextTheme(headlineLarge: TextStyle(fontSize: 21)),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
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
  var emailText = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var arrColors = [
      Colors.orange,
      Colors.yellow,
      Colors.pink,
      Colors.purple,
      Colors.green,
      Colors.orange,
      Colors.red,
      Colors.blueGrey,
      Colors.black
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      // Dynamically creating grid and coloring

      body: GridView.builder(
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                color: arrColors[index],
                borderRadius: BorderRadius.circular(20)),
          );
        },
        itemCount: arrColors.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 3,
        ),
      ),

      // ####################################################################

      // GridView.count(
      //   crossAxisCount: 4,
      //   crossAxisSpacing: 11,
      //   mainAxisSpacing: 11,
      //   children: [
      //     Container(color: arrColors[0]),
      //     Container(color: arrColors[1]),
      //     Container(color: arrColors[2]),
      //     Container(color: arrColors[3]),
      //     Container(color: arrColors[4]),
      //     Container(color: arrColors[5]),
      //     Container(color: arrColors[6]),
      //     Container(color: arrColors[7]),
      //   ],
      // ),

      //  USE GridView.extent or GridView.count
      //########################################################################

      //     GridView.extent(
      //   maxCrossAxisExtent: 100,
      //   crossAxisSpacing: 11,
      //   mainAxisSpacing: 11,
      //   children: [
      //     Container(color: arrColors[0]),
      //     Container(color: arrColors[1]),
      //     Container(color: arrColors[2]),
      //     Container(color: arrColors[3]),
      //     Container(color: arrColors[4]),
      //     Container(color: arrColors[5]),
      //f     Container(color: arrColors[6]),
      //     Container(color: arrColors[7]),
      //     Container(color: arrColors[8]),
      //   ],
      // )

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
